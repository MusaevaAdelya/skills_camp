package com.example.skills_camp.config;

import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

@Configuration
@AllArgsConstructor
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean
    public static PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public RestTemplate restTemplate(){
        return new RestTemplate();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin()
                .loginPage("/login")
                .failureUrl("/login?error=true")
                .defaultSuccessUrl("/")

                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/")
                .clearAuthentication(true)
                .invalidateHttpSession(true)

                .and()
                .exceptionHandling()
                .accessDeniedPage("/login");

//                .and()
//                .authorizeRequests()
//                .antMatchers("/","/login")
//                .authenticated()
//
//                .anyRequest()
//                .permitAll();

        http.authorizeRequests()
                .antMatchers("/","/profile")
                .authenticated();

        http.authorizeRequests()
                .anyRequest()
                .permitAll();


        http.csrf().disable();

    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        String fetchUsersQuery = "select email, password, enabled"
                + " from users"
                + " where email =?";

        String fetchRolesQuery = "select email, role"
                + " from users"
                + " where email = ?";

        auth.jdbcAuthentication()
                .usersByUsernameQuery(fetchUsersQuery)
                .authoritiesByUsernameQuery(fetchRolesQuery)
                .dataSource(dataSource);
    }

    @SneakyThrows
    public static void authWithHttpServletRequest(HttpServletRequest request, String username, String password) {
        request.login(username, password);
    }

    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
}

