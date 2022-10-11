package com.spring.safety.service;

import com.spring.safety.model.User;

public interface UserService {

    User save(User user);

    User findByEmail(String email);
}
