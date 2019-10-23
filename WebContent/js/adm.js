var erro = document.querySelector(".msg");

if(document.URL.indexOf("excluido=") > 0) {
    erro.id = "excluido";
    erro.textContent = "Usuario excluido com sucesso!";
    
    setTimeout(function() {
        erro.id = "";
        erro.textContent = "";
    }, 3000)
}


    // VARIAVEIS DO PROJETO
var btn = document.querySelector("#btn-disciplinas");
var frm = document.querySelector("#frm-pesquisa");
var tab = document.querySelector("#tabela_de_alunos");
var lod = document.querySelector("#load");

    // AÇÃO DE CLICK NO BOTÃO DE 'PESQUISAR'
btn.addEventListener("click", function(e) {
    e.preventDefault();

    // ATRIBUI E DEPOIS APAGA O #value DOS INPUTS
    var email = frm.email.value.toUpperCase();
    var nome = frm.nome.value.toUpperCase();

    // EFEITO DE CARREGAR
    tab.style.display = "none"
    lod.style.display = "block"


    var body = tab.querySelector("tbody");
    var body;

    // ACHANDO AS @TR DA TABELA E ESCONDENDO OS QUE NAO FOREM IGUAIS
    // AO VALOR DA PESQUISA
    if(nome == "" && email == "") {
        for(var c = 0; c < body.children.length;c++) {
            body.children[c].className = "IGUAL";
        }
    } else {
        
        for(var c = 0; c < body.children.length;c++) {
            
            var linha = body.children[c];
            linha.className = "NAOIGUAL";

            // PEGANDO O "VALOR" NOME E EMAIL DA TR
            var nome_linha = linha.children[0].textContent.toUpperCase();
            var email_linha = linha.children[1].textContent.toUpperCase();

            var achou = false;
            if(nome_linha.indexOf(nome) != -1 && nome != "" ) {
                linha.className = "IGUAL"
                achou = true;
            }
            else if(email_linha.indexOf(email) != -1 && email != "") {
                linha.className = "IGUAL"    
                achou = true;
            } 
            
        }
    }
    // EFEITO DE "VOLTAR" COM A (S) PESQUISA (S)
    setTimeout(function(){
        tab.style.display = "table"
        lod.style.display = "none"
        if(!achou) {
            erro.id = "erro";
            erro.textContent = "Nenhum resultado encontrado"
            setTimeout(function() {
                erro.id = "";
                erro.textContent = ""
            }, 3000)
        }
    }, 2000);

})