const express = require('express');
const session = require('express-session');
const axios = require('axios');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true
}));

app.set('view engine', 'ejs');


function apology(message, code = 400) {
    return { error: message, code: code };
}

app.get('/', (req, res) => {
    res.render('login');
});

app.get('/register', (req, res) => {
    res.render('register');
});

app.post('/register', async (req, res) => {
    const { username, password, confirmation } = req.body;

    if (!username) {
        return res.status(403).json(apology("Por favor insira um username"));
    }
    if (!password) {
        return res.status(403).json(apology("Por favor insira um password"));
    }
    if (!confirmation) {
        return res.status(403).json(apology("Por favor confirme o password"));
    }
    if (password !== confirmation) {
        return res.status(403).json(apology("confirmacao de password recusada"));
    }

    try {
        const response = await axios.post('http://localhost:5000/register', {
            username: username,
            password: password,
            confirmation: confirmation
        });

        if (response.status === 200) {
            res.redirect('/');
        } else {
            res.status(response.status).json(apology(response.data.error, response.status));
        }
    } catch (error) {
        res.status(500).json(apology(error.message, 500));
    }
});

app.get('/consulta', (req, res) => {
    res.render('consulta');
});

app.get('/logout', (req, res) => {
    req.session.destroy();
    res.redirect('/');
});

app.listen(5001, () => {
    console.log('Server is running on port 5001');
});
