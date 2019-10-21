var logado = document.cookie.split("=")[1];
console.log(logado)

document.querySelector("#user-name").textContent += logado;

var menu = document.querySelector("#menu");
var container = document.querySelector("#menu-container");
menu.addEventListener("click", function(){
    container.style.display = "block";
})
container.addEventListener("click", function(e){
    if(e.target == this)
        this.style.display = "none";
})

var alterar_conta = document.querySelector("#alterar_conta")
var container_alterar = document.querySelector("#alterar-container")
alterar_conta.addEventListener("click", function(){
    container_alterar.style.display = "flex"
})
container_alterar.addEventListener("click", function(e) {
    if(e.target == this)
        this.style.display = "none"
})