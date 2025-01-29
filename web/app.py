from flask import Flask, render_template, redirect, url_for, session, request, jsonify
from flask_session import Session
from flask_cors import CORS
from functools import wraps
import requests

app = Flask(__name__)
app.secret_key = 'your_secret_key'


app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if session.get("user_id") is None:
            return redirect("/login")
        return f(*args, **kwargs)
    return decorated_function

CORS(app)

@app.after_request
def after_request(response):
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response

def apology(message, code=400):
    return jsonify({"error": message}), code

@app.route('/', methods=['GET'])
def index():
    if not session.get('user_id'):
        return redirect('/login')
    try:
        response = requests.get('http://localhost:5000/ilhas')
        response.raise_for_status()
        ilhas = response.json()
        return render_template('index.html', ilhas=ilhas)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar ilhas: {e}")
        return redirect('/login')

@app.route('/pesquisar', methods=['GET'])
@login_required
def pesquisar():
    try:
        response = requests.get('http://localhost:5000/ilhas')
        response.raise_for_status()
        ilhas = response.json()
        return render_template('pesquisar.html', ilhas=ilhas)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar ilhas: {e}")
        return apology("Erro ao buscar ilhas", 500)

@app.route('/introduzir', methods=['GET', 'POST'])
@login_required
def introduzir():
    if request.method == 'POST':
        nome = request.form.get('nome')

        if not nome:
            return apology("Por favor insira um nome de ilha", 403)

        response = requests.put('http://localhost:5000/ilhas', json={
            'nome': nome
        })

        if response.status_code == 200:
            return redirect(url_for('index'))
        else:
            return apology(response.json().get('error'), response.status_code)

    return render_template('introduzir.html')

@app.route('/usuarios', methods=['GET'])
@login_required
def usuarios():
    try:
        response = requests.get('http://localhost:5000/usuarios')
        response.raise_for_status()
        usuarios = response.json()
        current_user_id = session.get('user_id')
        usuarios.sort(key=lambda x: x['id'] != current_user_id)
        return render_template('usuarios.html', usuarios=usuarios, current_user_id=current_user_id)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar usuarios: {e}")
        return apology("Erro ao buscar usuarios", 500)

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        confirmation = request.form.get('confirmation')

        if not username:
            return apology("Por favor insira um username", 403)
        if not password:
            return apology("Por favor insira um password", 403)
        if not confirmation:
            return apology("Por favor confirme o password", 403)
        if password != confirmation:
            return apology("confirmacao de password recusada", 403)

        response = requests.post('http://localhost:5000/register', json={
            'username': username,
            'password': password,
            'confirmation': confirmation
        })

        if response.status_code == 200:
            session['user_id'] = response.json().get('user_id')
            return redirect(url_for('index'))
        else:
            return apology(response.json().get('error'), response.status_code)

    return render_template('register.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')

        if not username:
            return apology("Por favor insira um username", 403)
        if not password:
            return apology("Por favor insira um password", 403)

        response = requests.post('http://localhost:5000/login', json={
            'username': username,
            'password': password
        })

        if response.status_code == 200:
            session['user_id'] = response.json().get('user_id')
            return redirect(url_for('index'))
        else:
            return apology(response.json().get('error'), response.status_code)

    return render_template('login.html')

@app.route('/conselhos', methods=['POST'])
def get_conselhos():
    ilha_id = request.json.get('ilha_id')
    try:
        response = requests.post('http://localhost:5000/conselhos', json={'id': ilha_id})
        response.raise_for_status()
        conselhos = response.json()
        return jsonify(conselhos)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar conselhos: {e}")
        return apology("Erro ao buscar conselhos", 500)

@app.route('/freguesias', methods=['POST'])
def get_freguesias():
    conselho_id = request.json.get('conselho_id')
    try:
        response = requests.post('http://localhost:5000/freguesias', json={'id': conselho_id})
        response.raise_for_status()
        freguesias = response.json()
        return jsonify(freguesias)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar freguesias: {e}")
        return apology("Erro ao buscar freguesias", 500)

@app.route('/zonas', methods=['POST'])
def get_zonas():
    freguesia_id = request.json.get('freguesia_id')
    try:
        response = requests.post('http://localhost:5000/zonas', json={'id': freguesia_id})
        response.raise_for_status()
        zonas = response.json()
        return jsonify(zonas)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar zonas: {e}")
        return apology("Erro ao buscar zonas", 500)

@app.route('/lugares', methods=['POST'])
def get_lugares():
    zona_id = request.json.get('zona_id')
    try:
        response = requests.post('http://localhost:5000/lugares', json={'id': zona_id})
        response.raise_for_status()
        lugares = response.json()
        return jsonify(lugares)
    except requests.RequestException as e:
        app.logger.error(f"Erro ao buscar lugares: {e}")
        return apology("Erro ao buscar lugares", 500)

@app.route('/logout')
@login_required
def logout():
    session.clear()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True, port=5001)