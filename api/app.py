from flask import Flask, jsonify, request, session
from config import Config
from models import db
from helpers import login_required
from sqlalchemy.sql import text, bindparam
from flask_session import Session
from flask_cors import CORS
from werkzeug.security import check_password_hash, generate_password_hash

app = Flask(__name__)
app.config.from_object(Config)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

CORS(app)

db.init_app(app)

@app.after_request
def after_request(response):
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0 
    response.headers["Pragma"] = "no-cache"
    return response

@app.route('/ilhas', methods=['GET'])
def get_ilhas():
    result = db.session.execute(text("SELECT id, nome FROM ilhas"))
    ilhas = [{'id': row[0], 'nome': row[1]} for row in result]
    return jsonify(ilhas)

@app.route('/ilhas', methods=['PATCH'])
def update_ilhas():
    data = request.get_json()
    ilha_id = data.get("id")
    novo_nome = data.get("nome")
    
    if not ilha_id or not novo_nome:
        return jsonify({"error": "Por favor insira um id e um novo nome de ilha"}), 400
    
    try:
        db.session.execute(text("UPDATE ilhas SET nome = :novo_nome WHERE id = :ilha_id"), {"novo_nome": novo_nome, "ilha_id": ilha_id})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/ilhas', methods=['DELETE'])
def delete_ilhas():
    data = request.get_json()
    ilha = data.get("id")
    
    if not ilha:
        return jsonify({"error": "Por favor insira um nome de ilha"}), 400
    
    try:
        db.session.execute(text("DELETE FROM ilhas WHERE id = :ilha"), {"ilha": ilha})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/ilhas', methods=['PUT'])
def add_ilhas():
    data = request.get_json()
    nome = data.get("nome")
    
    if not nome:
        return jsonify({"error": "Por favor insira um nome de ilha"}), 400
    
    try:
        db.session.execute(text("INSERT INTO ilhas (nome) VALUES (:nome)"), {"nome": nome})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/conselhos', methods=['POST'])
def conselhos():
    data = request.get_json()
    ilha = data.get("id")

    if not ilha:
        return jsonify({"error": "Por favor insira um id de ilha"}), 400

    try:
        result = db.session.execute(text("SELECT id, nome FROM conselhos WHERE id_ilha = :ilha"), {"ilha": ilha})
        conselhos = [{'id': row[0], 'nome': row[1]} for row in result]
        return jsonify(conselhos)
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    
@app.route('/conselhos', methods=['PUT'])
def add_conselhos():
    data = request.get_json()
    nome = data.get("nome")
    ilha = data.get("ilha")
    
    if not nome:
        return jsonify({"error": "Por favor insira um nome de conselho"}), 400
    
    try:
        db.session.execute(text("INSERT INTO conselhos (nome, id_ilha) VALUES (:nome, :ilha)"), {"nome": nome, "ilha": ilha})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    
@app.route('/conselhos', methods=['PATCH'])
def update_conselhos():
    data = request.get_json()
    anterior = data.get("id")
    atual = data.get("conselho_atual")
    
    if not anterior or not atual:
        return jsonify({"error: Por favor insira um nome de conselho"})
    
    try:
        db.session.execute(text("UPDATE conselhos set nome = :atual WHERE id = :anterior"), {"atual": atual, "anterior": anterior})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    
@app.route('/conselhos', methods=['DELETE'])
def delete_conselhos():
    data = request.get_json()
    conselho = data.get("id")

    
    if not conselho:
        return jsonify({"error: Por favor insira um nome de conselho"})
    
    try:
        db.session.execute(text("DELETE FROM conselhos WHERE id = :conselho"), {"conselho": conselho})
        db.session.commit()
        return jsonify([{"success" : True, "conselho": conselho}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    

@app.route('/freguesias', methods=['POST'])
def freguesias():
    data = request.get_json()
    conselho = data.get("id")
    
    if not conselho:
        return jsonify({"error": "Por favor insira um id de conselho"}), 400
    
    try:
        result = db.session.execute(text("SELECT id, nome FROM freguesias WHERE id_conselho = :conselho"), {"conselho": conselho})
        freguesias = [{'id': row[0], 'nome': row[1]} for row in result]
        return jsonify(freguesias)
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    

@app.route('/freguesias', methods=['PUT'])
def add_freguesias():
    data = request.get_json()
    nome = data.get("nome")
    conselho = data.get("conselho")
    
    if not nome:
        return jsonify({"error": "Por favor insira um nome de freguesia"}), 400
    
    try:
        db.session.execute(text("INSERT INTO freguesias (nome, id_conselho) VALUES (:nome, :conselho"), {"nome": nome, "conselho": conselho})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    
@app.route('/freguesias', methods=['PATCH'])
def update_freguesias():
    data = request.get_json()
    anterior = data.get("freguesia_anterior")
    atual = data.get("freguesia_atual")
    
    if not anterior or not atual:
        return jsonify({"error: Por favor insira um nome de freguesia"})
    
    try:
        db.session.execute(text("UPDATE freguesias set nome = :atual WHERE nome = :anterior"), {"atual": atual, "anterior": anterior})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    
@app.route('/freguesias', methods=['DELETE'])
def delete_freguesias():
    data = request.get_json()
    freguesia = data.get("freguesia")
    
    if not freguesia:
        return jsonify({"error: Por favor insira um nome de freguesia"})
    
    try:
        db.session.execute(text("DELETE FROM freguesias WHERE nome = :freguesia"), {"freguesia": freguesia})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    
@app.route('/zonas', methods=['POST'])
def zonas():
    data = request.get_json()
    freguesia = data.get("id")
    
    if not freguesia:
        return jsonify({"error": "Por favor insira um id de freguesia"}), 400
    
    try:
        result = db.session.execute(text("SELECT id, nome FROM zonas WHERE id_freguesia = :freguesia"), {"freguesia": freguesia})
        zonas = [{'id': row[0], 'nome': row[1]} for row in result]
        return jsonify(zonas)
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    

@app.route('/zonas', methods=['PUT'])
def add_zonas():
    data = request.get_json()
    nome = data.get("nome")
    freguesia = data.get("freguesia")
    
    if not nome:
        return jsonify({"error": "Por favor insira um nome de zona"}), 400
    
    try:
        db.session.execute(text("INSERT INTO zonas (nome, id_freguesia) VALUES (:nome, :freguesia"), {"nome": nome, "freguesia": freguesia})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    
@app.route('/zonas', methods=['PATCH'])
def update_zonas():
    data = request.get_json()
    anterior = data.get("zona_anterior")
    atual = data.get("zona_atual")
    
    if not anterior or not atual:
        return jsonify({"error: Por favor insira um nome de zona"})
    
    try:
        db.session.execute(text("UPDATE zonas set nome = :atual WHERE nome = :anterior"), {"atual": atual, "anterior": anterior})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    

@app.route('/zonas', methods=['DELETE'])
def delete_zonas():
    data = request.get_json()
    zona = data.get("zona")
    
    if not zona:
        return jsonify({"error: Por favor insira um nome de zona"})
    
    try:
        db.session.execute(text("DELETE FROM zonas WHERE nome = :zona"), {"zona": zona})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    
@app.route('/lugares', methods=['POST'])
def lugares():
    data = request.get_json()
    zona = data.get("id")
    
    if not zona:
        return jsonify({"error": "Por favor insira um id de zona"}), 400
    
    try:
        result = db.session.execute(text("SELECT id, nome FROM lugares WHERE id_zona = :zona"), {"zona": zona})
        lugares = [{'id': row[0], 'nome': row[1]} for row in result]
        return jsonify(lugares)
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    

@app.route('/lugares', methods=['PUT'])
def add_lugares():
    data = request.get_json()
    nome = data.get("nome")
    zona = data.get("zona")
    
    if not nome:
        return jsonify({"error": "Por favor insira um nome de lugar"}), 400
    
    try:
        db.session.execute(text("INSERT INTO lugares (nome, id_zona) VALUES (:nome, :zona"), {"nome": nome, "zona": zona})
        db.session.commit()
        return jsonify({"success": True})
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    
    
@app.route('/lugares', methods=['PATCH'])
def update_lugares():
    data = request.get_json()
    anterior = data.get("lugar_anterior")
    atual = data.get("lugar_atual")
    
    if not anterior or not atual:
        return jsonify({"error: Por favor insira um nome de lugar"})
    
    try:
        db.session.execute(text("UPDATE lugares set nome = :atual WHERE nome = :anterior"), {"atual": atual, "anterior": anterior})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    

@app.route('/lugares', methods=['DELETE'])
def delete_lugares():
    data = request.get_json()
    lugar = data.get("lugar")
    
    if not lugar:
        return jsonify({"error: Por favor insira um nome de lugar"})
    
    try:
        db.session.execute(text("DELETE FROM lugares WHERE nome = :lugar"), {"lugar": lugar})
        return jsonify([{"success" : True}])
    except Exception:
        return jsonify({"error": str(Exception)}), 500
    
    

@app.route("/login", methods=["POST"])
def login():
    data = request.get_json()
    username = data.get("username")
    password = data.get("password")

    if not username:
        return jsonify({"error": "Por favor insira um username"}), 403
    if not password:
        return jsonify({"error": "Por favor insira um password"}), 403

    user = db.session.execute(text("SELECT * FROM USERS WHERE username = :username"), {"username": username}).fetchone()

    if user is None or not check_password_hash(user.hash, password):
        return jsonify({"error": "username ou password incorretos"}), 403

    session["user_id"] = user.id
    return jsonify({"success": True})

@app.route("/logout", methods=["POST"])
@login_required
def logout():
    session.clear()
    return jsonify({"success": True})

@app.route("/register", methods=["POST"])
def register():
    data = request.get_json()
    username = data.get("username")
    password = data.get("password")
    confirmation = data.get("confirmation")

    if not username:
        return jsonify({"error": "Por favor insira um username"}), 403
    if not password:
        return jsonify({"error": "Por favor insira um password"}), 403
    if not confirmation:
        return jsonify({"error": "Por favor confirme o password"}), 403
    if password != confirmation:
        return jsonify({"error": "confirmacao de password recusada"}), 403

    password = str(password)

    stmt = text("INSERT INTO USERS (username, hash) VALUES (:username, :hash)")
    stmt = stmt.bindparams(bindparam("username", username), bindparam("hash", generate_password_hash(password)))
    db.session.execute(stmt)
    db.session.commit()

    result = db.session.execute(text("SELECT id FROM USERS WHERE username = :username").bindparams(bindparam("username", username)))
    session["user_id"] = result.fetchone()[0]
    return jsonify({"success": True})

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)