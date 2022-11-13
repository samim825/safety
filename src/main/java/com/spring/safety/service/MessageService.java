package com.spring.safety.service;

import com.spring.safety.model.Message;

import java.util.List;

public interface MessageService {

    Message save(Message message);

    Message update(Message message);

    Message findById(String id);

    List<Message> findAll();

    void delete(String id);

}
