package com.spring.safety.config;

import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userService.findByEmail(email);

        if (user == null)
            throw new UsernameNotFoundException("Username not exist in database");

        return new CustomUserDetails(user);
    }
}
