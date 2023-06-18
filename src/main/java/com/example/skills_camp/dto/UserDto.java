package com.example.skills_camp.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level= AccessLevel.PRIVATE)
public class UserDto {
    String firstName;
    String lastName;
    String avatar;
    String email;
    String telegram;
    String about;
}
