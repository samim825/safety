package com.spring.safety.service;

import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;

import java.util.List;

public interface UserService {

    User save(User user);

    User findByEmail(String email);

    User findActiveUserByEmail(String email);

    List<Hospital> findActiveHospital();

    List<Hospital> findInActiveHospital();
}
