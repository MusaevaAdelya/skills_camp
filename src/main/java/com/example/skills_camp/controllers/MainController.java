package com.example.skills_camp.controllers;

import com.example.skills_camp.dto.ProfileEditForm;
import com.example.skills_camp.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final UserService userService;

    @GetMapping("/")
    public String homePage(Model model){
        return "index";
    }


    @GetMapping("/profile")
    public String profilePage(Model model, Authentication authentication){
        model.addAttribute("user",userService.addUserDto(authentication.getName()));
        return "profile";
    }

    @PostMapping("/profile/edit")
    public String editProfileInfo(@ModelAttribute("newProfileData") ProfileEditForm form, Authentication authentication,
                                  RedirectAttributes ra) {

        userService.editProfile(form, authentication.getName(), ra);
        return "redirect:/profile";
    }
}
