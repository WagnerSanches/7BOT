document.querySelector("#user-name").textContent += document.cookie.split("=")[1];
        
var menu = document.querySelector("#menu");
var container = document.querySelector("#menu-container");
menu.addEventListener("click", function(){
    container.style.display = "block";
})
container.addEventListener("click", function(e){
    if(e.target == this)
        this.style.display = "none";
})
