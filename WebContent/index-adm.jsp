<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>APP - adm</title>
    <link rel="stylesheet" href="css/cabecalho.css">    
    <link rel="stylesheet" href="css/adm.css">
    <script src="js/auth.js"></script>
</head>
<body>
    
    <header>
        <div class="structure" id="header-flex">

            <div id="header-infos-site">
            	<a href="app.html"><img src="images/logorecortado.png" alt="Logo 7BOT"></a>
                <h1 id="user-name">Bem vindo, </h1>
            </div>

            <div id="changes">
                <a href="deslogar">Sair</a>
                <div>
                    <button id="menu"><img src="images/menu.png" alt="menu"></button>
                </div>
            </div>
        </div>
        <div id="menu-container">
            <div>
                <a href="deslogar">Sair</a>
            </div>
        </div>
    </header>

    <div id="pesquisar_aluno">
        <div class="structure">
            <form id="frm-pesquisa">
                <input type="text" placeholder="procure por nome" name="nome">
                <input type="text" placeholder="procure por email" name="email">
                <button id="btn-disciplinas">Pesquisar</button>
            </form>
        </div>
    </div>
    <div class="structure">
        <img src="images/eclipse_load.gif" alt="loading"  id="load">
        <p class="msg"></p>
        <table id="tabela_de_alunos">
            <c:forEach var="aluno" items="${listaAlunos}">
 
            	<tr>
	                <td>${aluno.nome }</td>
	                <td>${aluno.email }</td>
	                <td>${aluno.data }</td>
	                
	                <td><a href="excluirAluno?id=${aluno.id }" id="deletar"><img src="images/close.png" alt="deletar"></a></td>
            	</tr>
            
            </c:forEach>
  </table>
    </div>

</body>
<script src="js/adm.js"></script>
<script src="js/cabecalho.js"></script>
</html>