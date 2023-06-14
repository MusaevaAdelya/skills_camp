package com.example.skills_camp.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReCaptchaResponse {
    private boolean success;
    private String challenge_ts;
    private String hostname;
}
