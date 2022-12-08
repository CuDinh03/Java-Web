package controller;

import model.Messenger;
import model.OutputMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ControllerMessenger {


    @MessageMapping("/chat")
    @SendTo("/topic/messages")
    public OutputMessage send(Messenger messenger) throws Exception {
        String time = new SimpleDateFormat("HH:mm").format(new Date());
        return new OutputMessage(messenger.getFrom(), messenger.getText(), time);
    }

}
