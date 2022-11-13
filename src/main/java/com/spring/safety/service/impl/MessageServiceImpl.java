package com.spring.safety.service.impl;

import com.spring.safety.model.Message;
import com.spring.safety.repository.MessageRepository;
import com.spring.safety.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public Message save(Message message) {
        return messageRepository.save(message);
    }

    @Override
    public Message update(Message message) {
        return messageRepository.save(message);
    }

    @Override
    public Message findById(String id) {
        return messageRepository.findById(id).get();
    }

    @Override
    public List<Message> findAll() {
        return messageRepository.findAll();
    }

    @Override
    public void delete(String id) {

        messageRepository.deleteById(id);
    }
}
