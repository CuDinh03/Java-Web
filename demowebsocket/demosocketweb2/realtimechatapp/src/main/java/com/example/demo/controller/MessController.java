package com.example.demo.controller;

import com.example.demo.model.Messenger;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessController {


    @MessageMapping("/messenger")
    @SendTo("/topic/return-to")
    public Messenger getContent(@RequestBody Messenger messenger){
//        try {
//            Thread.sleep(2000);
//        }catch (InterruptedException e){
//            e.printStackTrace();
//        }

        return messenger;
    }
}
