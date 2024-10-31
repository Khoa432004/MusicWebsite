package org.springframework.boot.spring_boot_MusicApp.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .requestMatchers("/assets/**", "/Register.html", "/register_user").permitAll()  // Cho phép truy cập tự do đến các URL nhất định
                .anyRequest().authenticated()  // Yêu cầu xác thực cho các URL khác
            .and()
            .formLogin()
                .loginPage("/Login.html")  // Đặt URL cho trang đăng nhập
                .loginProcessingUrl("/login")  // URL xử lý đăng nhập
                .defaultSuccessUrl("/Home.html", true)  // URL thành công khi đăng nhập
                .failureUrl("/login?error=true")  // URL khi đăng nhập thất bại
                .permitAll();
            /*.and()
            .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout=true")
                .permitAll();*/

        return http.build();
    }
}
