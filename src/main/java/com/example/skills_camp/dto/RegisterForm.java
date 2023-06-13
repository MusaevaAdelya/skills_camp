package com.example.skills_camp.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level= AccessLevel.PRIVATE)
public class RegisterForm {
    String firstName;
    String lastName;
    String email;
    String password;

}
