let formChatBot = document.querySelector("#formChatBot");
let dialog = document.querySelector("#dialog");


formChatBot.addEventListener("submit", function(event){
    event.preventDefault();

    let dados = {
        dialog: dialog.value
    }

    console.log(dados);
});