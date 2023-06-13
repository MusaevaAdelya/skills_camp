package com.example.skills_camp.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProfileEditForm {
    private String firstName;
    private String lastName;
    private MultipartFile newAvatar;
    private String newPassword;
    private String telegram;
    private String about;
}
