package com.example.skills_camp.controllers;

import com.example.skills_camp.dto.ReCaptchaResponse;
import com.example.skills_camp.dto.RegisterForm;
import com.example.skills_camp.services.UserService;
import com.example.skills_camp.util.CaptchaSettings;
import lombok.RequiredArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
//import org.springframework.web.client.RestTemplate;
//import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;
    private final CaptchaSettings captchaSettings;
    private final RestTemplate restTemplate;

    @GetMapping("/login")
    public String login(Model model,
                        @RequestParam(required = false, defaultValue = "false") Boolean error,
                        @RequestParam(required = false, defaultValue = "false") Boolean invalidCaptcha){
        model.addAttribute("error",error);
        model.addAttribute("captchaSettings",captchaSettings);
        model.addAttribute("invalidCaptcha",invalidCaptcha);

        return "login_new";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute RegisterForm registerForm, @RequestParam("g-recaptcha-response") String captcha){
        ReCaptchaResponse reCaptchaResponse=userService.processCaptchaResponse(captcha);

        if(reCaptchaResponse.isSuccess()){
            userService.register(registerForm);
            return "redirect:/";
        }else{
            return "redirect:/?invalidCaptcha=true";
        }

    }

}
