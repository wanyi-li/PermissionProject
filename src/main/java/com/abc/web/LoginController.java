package com.abc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController
{
    @RequestMapping("/login")
    public String login()
    {
        System.out.println("login controller");
        return "redirect:login.jsp";
    }
}
