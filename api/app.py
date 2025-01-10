from flask import Flask, jsonify, request, session
from config import Config
from models import db
from helpers import login_required
from sqlalchemy.sql import text, bindparam
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash

app = Flask(__name__)
app.config.from_object(Config)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

db.init_app(app)

@app.after_request
def after_request(response):
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0 
    response.headers["Pragma"] = "no-cache"
    return response

@app.route('/ilhas', methods=['GET'])
@login_required
def get_ilhas():
    result = db.session.execute(text("SELECT id, nome FROM ilhas"))
    ilhas = [{'id': row[0], 'nome': row[1]} for row in result]
    return jsonify(ilhas)

@app.route('/conselhos', methods=['POST'])
@login_required
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
    

@app.route('/freguesias', methods=['POST'])
@login_required
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
    
@app.route('/zonas', methods=['POST'])
@login_required
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
    
@app.route('/lugares', methods=['POST'])
@login_required
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