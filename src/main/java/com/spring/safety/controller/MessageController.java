package com.spring.safety.controller;

import com.spring.safety.model.Message;
import com.spring.safety.service.MessageService;
import com.spring.safety.service.impl.MessageServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class MessageController {

    @Autowired
    private MessageServiceImpl messageService;

    public Message saveMessage(Message message){
        return messageService.save(message);
    }

    public Message updateMessage(Message message){
        return messageService.save(message);
    }

    public Message findMessageById(String id){
        return messageService.findById(id);
    }

    public List<Message> findAllMessage(){
        return messageService.findAll();
    }

    public void deleteMessage(String id){
        messageService.delete(id);
    }

}
