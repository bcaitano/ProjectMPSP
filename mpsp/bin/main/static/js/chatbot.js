// CHAT BOOT MESSENGER////////////////////////

var btn_chatbot = document.getElementById("btn-chatbot"); 
var cx_dialog = document.getElementById("cx-dialog");
var fechar = document.getElementById("fechar");
var btn_chatbot_hover = document.getElementById("btn-chatbot-hover");

btn_chatbot.addEventListener("click", function(){
    btn_chatbot.style.display = "none";
    cx_dialog.style.display = "block";
});

fechar.addEventListener("click", function(){
    btn_chatbot.style.display = "flex";
    cx_dialog.style.display = "none";
});

btn_chatbot.addEventListener("mouseenter", function(){
    btn_chatbot_hover.style.display = "block";
});

btn_chatbot.addEventListener("mouseleave", function(){    
    btn_chatbot_hover.style.display = "none";
});