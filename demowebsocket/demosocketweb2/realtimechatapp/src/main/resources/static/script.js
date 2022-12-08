var stompClient = null;

function sendMessenger(){
    let jsonOb = {
        name: localStorage.getItem("name"),
    text:$("#messenger-value").val()
    }
    stompClient.send("/app/messenger",{},JSON.stringify(jsonOb))

}



function connect(){
        let socket = new SockJS("/server1")
        stompClient = Stomp.over(socket)

        stompClient.connect({},function (frame){
            console.log("Connected: " + frame)

            $("#name-form").addClass('d-none')
            $("#chat-room").removeClass('d-none')

            //subscribe

            stompClient.subscribe("/topic/return-to",function (response){
                showMessage(JSON.parse(response.body))
            })

        })

}

function showMessage(messenger){
    $("#message-container-table").prepend(`<tr><td><b>${messenger.name} :</b> ${messenger.text}</td></tr>`)

}

$(document).ready(()=>{
    $("#login").click(()=>{

       let name = $("#name-value").val()
        localStorage.setItem("name", name)
        $("#name-title").html(`Welcome , <b>${name} </b> `)
        connect();
    })

    $("#send-btn").click(()=>{
        sendMessenger()
    })

    $("#logout").click(()=>{
        localStorage.removeItem("name")
        if (stompClient!=null){
            stompClient.disconnect()
            $("#name-form").removeClass('d-none')
            $("#chat-room").addClass('d-none')

        }
    })

})