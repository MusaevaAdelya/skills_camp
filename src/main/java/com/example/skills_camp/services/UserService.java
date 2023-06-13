package com.example.skills_camp.services;

import com.example.skills_camp.config.SecurityConfig;
import com.example.skills_camp.dto.ProfileEditForm;
import com.example.skills_camp.dto.RegisterForm;
import com.example.skills_camp.dto.UserDto;
import com.example.skills_camp.entities.User;
import com.example.skills_camp.repositories.UserRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Service
@RequiredArgsConstructor
@FieldDefaults(level= AccessLevel.PRIVATE)
public class UserService {
    final UserRepository userRepository;
    final ImageService imageService;

    public void register(RegisterForm user) {
        HttpServletRequest request =
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
                        .getRequest();

        if(!userRepository.existsByEmail(user.getEmail())){
            userRepository.save(User.builder()
                    .firstName(user.getFirstName())
                    .lastName(user.getLastName())
                    .email(user.getEmail())
                    .password(SecurityConfig.encoder().encode(user.getPassword()))
                    .build());

            SecurityConfig.authWithHttpServletRequest(request, user.getEmail(), user.getPassword());
        }

    }

    public void editProfile(ProfileEditForm form, String userEmail , RedirectAttributes ra) {
        User user=userRepository.findByEmail(userEmail).orElseThrow(()->new UsernameNotFoundException(userEmail));



        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setTelegram(form.getTelegram());
        user.setAbout(form.getAbout());
        user.setImgUrl(imageService.saveImage(form.getNewAvatar()));

        userRepository.save(user);
    }


    public UserDto addUserDto(String email) {
        User user=userRepository.findByEmail(email).orElseThrow(()->new UsernameNotFoundException(email));

        return UserDto.builder()
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .avatar(user.getImgUrl())
                .telegram(user.getTelegram())
                .about(user.getAbout())
                .build();
    }
}
