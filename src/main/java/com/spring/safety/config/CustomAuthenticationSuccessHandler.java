package com.spring.safety.config;


import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {


    @Autowired
    UserService userService;


    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        System.out.println("----- Authentication Success-----" + authentication.getName());

        User user = userService.findActiveUserByEmail(authentication.getName());
        HttpSession session = request.getSession();
        session.setAttribute("user",user);

        if(user.getEmail().equals("admin@gmail.com") && user.getPassword().equals("$2a$10$kCDuzwaZJJqeMzVudZOIYu.mTPA8Il5nlA660cCh9cj4YZJKajsnq")){
            response.sendRedirect("/admin/home");
        }else {
            response.sendRedirect("/admin");
        }

        if (session != null) {
            String redirectUrl = (String) session.getAttribute("url_prior_login");

            if (redirectUrl != null) {
                session.removeAttribute("url_prior_login");
                getRedirectStrategy().sendRedirect(request, response, redirectUrl);
            } else {
                super.onAuthenticationSuccess(request, response, authentication);
            }
        } else {
            super.onAuthenticationSuccess(request, response, authentication);
        }

        System.out.println("onAuthenticationSucces method visited");


    }
}
