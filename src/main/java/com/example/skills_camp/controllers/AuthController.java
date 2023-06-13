package com.example.skills_camp.controllers;

import com.example.skills_camp.dto.RegisterForm;
import com.example.skills_camp.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(Model model,
                        @RequestParam(required = false, defaultValue = "false") Boolean error){
        model.addAttribute("error",error);

        return "login_new";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute RegisterForm registerForm){
        userService.register(registerForm);
        return "redirect:/login";
    }

}
