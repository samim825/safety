package com.spring.safety.service.impl;

import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.repository.UserRepository;
import com.spring.safety.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User findActiveUserByEmail(String email) {
        return userRepository.findEnabledUserByEmail(email);
    }

    @Override
    public List<Hospital> findActiveHospital() {
        return userRepository.findActiveHospital();
    }

    @Override
    public List<Hospital> findInActiveHospital() {
        return userRepository.findInActiveHospital();
    }

    @Override
    public void activateUser(Hospital hospital) {
        userRepository.doActiveUser(hospital);
    }

    @Override
    public void deActivateUser(Hospital hospital) {
        userRepository.doDeActiveUser(hospital);
    }
}
