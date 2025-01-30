# GeoCaboVerde

## Contexto
GeoCaboVerde é uma aplicação web desenvolvida para gerenciar informações geográficas de Cabo Verde. A aplicação permite a manipulação de dados sobre ilhas, conselhos, freguesias, zonas e lugares, além de gerenciar usuários. Utiliza Flask como framework web e SQLAlchemy para interações com o banco de dados.

## Estrutura do Projeto
O projeto é dividido em duas partes principais:
1. **API**: Localizada em `api/app.py`, é responsável por fornecer os endpoints para manipulação dos dados.
2. **Web**: Localizada em `web/app.py`, é a interface web que consome a API.

## Instalação

### Pré-requisitos
- Python 3.8 ou superior
- Virtualenv

### Passos para Instalação
1. Clone o repositório:
    ```bash
    git clone <URL_DO_REPOSITORIO>
    cd GeoCaboVerde
    ```

2. Crie e ative um ambiente virtual:
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

3. Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```

4. Configure as variáveis de ambiente necessárias no arquivo `.env`:
    ```bash
    touch .env
    echo "FLASK_APP=api/app.py" >> .env
    echo "FLASK_ENV=development" >> .env
    echo "DATABASE_URL=<URL_DO_BANCO_DE_DADOS>" >> .env
    ```

## Dependências
- Flask
- Flask-Session
- Flask-CORS
- Flask-SQLAlchemy
- SQLAlchemy
- Werkzeug
- PyMySQL
- SQLAlchemy

## Como Executar
1. Inicie o servidor da API:
    ```bash
    flask run --port 5000
    ```

2. Em outro terminal, inicie o servidor da aplicação web:
    ```bash
    flask run --port 5001
    ```

3. Acesse a aplicação no navegador:
    ```
    http://127.0.0.1:5001
    ```

## Endpoints Disponíveis
- **Ilhas**
  - `GET /ilhas`
  - `PATCH /ilhas`
  - `DELETE /ilhas`
  - `PUT /ilhas`
- **Conselhos**
  - `POST /conselhos`
  - `PUT /conselhos`
  - `PATCH /conselhos`
  - `DELETE /conselhos`
- **Freguesias**
  - `POST /freguesias`
  - `PUT /freguesias`
  - `PATCH /freguesias`
  - `DELETE /freguesias`
- **Zonas**
  - `POST /zonas`
  - `PUT /zonas`
  - `PATCH /zonas`
  - `DELETE /zonas`
- **Lugares**
  - `POST /lugares`
  - `PUT /lugares`
  - `PATCH /lugares`
  - `DELETE /lugares`
- **Usuários**
  - `GET /usuarios`
  - `POST /login`
  - `POST /logout`
  - `POST /register`

## Utilização da API
A API pode ser utilizada em outros projetos para manipulação de dados geográficos de Cabo Verde. Cada endpoint permite realizar operações CRUD (Create, Read, Update, Delete) em diferentes entidades como ilhas, conselhos, freguesias, zonas e lugares. Para utilizar a API, basta fazer requisições HTTP para os endpoints disponíveis.

## Contribuição
Sinta-se à vontade para contribuir com o projeto. Para isso, faça um fork do repositório, crie uma branch para suas alterações e envie um pull request.

## Licença
Este projeto está licenciado sob a licença MIT.
