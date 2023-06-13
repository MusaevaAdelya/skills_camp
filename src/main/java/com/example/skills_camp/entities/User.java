package com.example.skills_camp.entities;

import com.example.skills_camp.enums.Roles;
import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level= AccessLevel.PRIVATE)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    String firstName;

    String lastName;

    @NotBlank
    @Email
    @Column(unique=true)
    String email;

    @NotNull
    @Builder.Default
    @Enumerated(EnumType.STRING)
    Roles role= Roles.USER;

    @NotNull
    @Builder.Default
    Boolean enabled=true;

    @NotBlank
    @Size(min=3)
    String password;

    @NotBlank
            @Builder.Default
    String imgUrl="https://icon-library.com/images/anonymous-avatar-icon/anonymous-avatar-icon-25.jpg";

    String telegram;

    String about;
}
