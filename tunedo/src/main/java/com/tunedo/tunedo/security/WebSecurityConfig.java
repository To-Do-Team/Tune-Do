package com.tunedo.tunedo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig {
    @Bean
    SecurityFilterChain defaultSecurityFilterChainProtected(HttpSecurity http)
    throws Exception {

    http
        .cors((cors) -> cors.disable())
        .csrf((csrf) -> csrf.disable())
        .exceptionHandling(exception -> exception.accessDeniedPage("/"))
        .authorizeHttpRequests(
            (auth) -> auth
                .dispatcherTypeMatchers(DispatcherType.FORWARD, DispatcherType.ERROR)
                .permitAll()
                .requestMatchers("/css/**","/js/**")
                .permitAll()
                .requestMatchers(
                    HttpMethod.GET,
                    "/") // "/login"
                .permitAll()
                .requestMatchers(
                    HttpMethod.POST,
                    "/new")
                .permitAll()
                .requestMatchers(
                    HttpMethod.GET,
                    "/home")
                .authenticated()
                .requestMatchers(
                    HttpMethod.GET,
                    "/statistics/*", "/statistics/**")
                .authenticated()
                .requestMatchers(
                    HttpMethod.GET,
                    "/tasks/*", "/tasks/**")
                .authenticated()
                .requestMatchers(
                    HttpMethod.POST,
                    "/tasks/*", "/tasks/**")
                .authenticated()
                .anyRequest()
                .denyAll())
        .formLogin((login -> login
            .usernameParameter("email")
            .loginPage("/")
            .defaultSuccessUrl("/home", true)))
        .logout(logout -> logout
            .logoutUrl("/logout")
            .logoutSuccessUrl("/")
            .invalidateHttpSession(true)
            .clearAuthentication(true)
            .deleteCookies("JSESSIONID"))
        .sessionManagement(session -> session
            .maximumSessions(1)
            .expiredUrl("/"));

    return http.build();
    }

    /* @Bean
    WebSecurityCustomizer customizer(){
        return (web) -> web.ignoring().requestMatchers("/css/**","/js/**");
    } */
}
