<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/cabecalho.css">
    <link rel="stylesheet" href="css/alterar-conta.css">
</head>
<script src="js/auth.js"></script>
<body>
    <header>
        <div class="structure" id="header-flex">

            <div id="header-infos-site">
            	<a href="app.html"><img src="images/logorecortado.png" alt="Logo 7BOT"></a>
                <h1 id="user-name">Bem vindo, </h1>
            </div>

            <div id="changes">
                <a href="disciplinas">Disciplinas</a>
                <a href="configurarConta.jsp" id="alterar_conta" class="line">Minha conta</a>
                <a href="deslogar">Sair</a>
                <div>
                    <button id="menu"><img src="images/menu.png" alt="menu"></button>
                </div>
            </div>
        </div>
        <div id="menu-container">
            <div>
                <a href="disciplinas">Disciplinas</a>
                <a href="configurarConta.jsp" id="alterar_conta">Minha conta</a>
                <a href="deslogar">Sair</a>
            </div>
        </div>
    </header>

    <div id="header-site"> 
        <div class="structure">
            <p>Alterar conta</p>
        </div>
    </div>

    
    <div class="structure">
        <div id="alterar-container">
            <form action="alterar" method="POST" id="form-alterar">
                <p>
                    Nome
                    <input type="text" name="nome" value="">
                </p>
                <p>
                    Email
                    <input type="text" name="email">
                </p>
                <p>
                    Data
                    <input type="date" name="data">
                </p>
                <div>
                    <p>
                        Nova senha
                        <input type="password" name="senha">
                    </p>
                    <p>
                        Confirme a senha
                        <input type="password" name="confirmar-senha">
                    </p>
                </div>
                <div>
                    <button>Alterar</button>
                </div>
            </form>
        </div>
        

    </div>

</body>
<script src="js/cabecalho.js"></script>
</html>