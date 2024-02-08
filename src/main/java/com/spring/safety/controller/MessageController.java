package com.spring.safety.controller;

import com.spring.safety.model.Message;
import com.spring.safety.service.MessageService;
import com.spring.safety.service.impl.MessageServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class MessageController {

    private final MessageServiceImpl messageService;

    @ResponseBody
    @PostMapping("/sendMessage")
    public String saveMessage(@RequestBody Message message, ModelAndView modelAndView){
        System.out.println(message.toString());
        String msg = "";
        try{
            messageService.save(message);
            msg = "Your message has been sent. Thank you!";
        }catch (Exception exception){
            msg = "sorry, something went wrong!";
            exception.printStackTrace();
        }
        return msg;
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
