from flask import Flask, render_template, redirect, url_for, session, request, jsonify
import requests

app = Flask(__name__)
app.secret_key = 'your_secret_key'

def apology(message, code=400):
    return jsonify({"error": message}), code

@app.route('/')
def index():
    return render_template('login.html')

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
            return redirect(url_for('index'))
        else:
            return apology(response.json().get('error'), response.status_code)

    return render_template('register.html')

@app.route('/consulta')
def consulta():
    return render_template('consulta.html')

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True, port=5001)