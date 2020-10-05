package com.baddragon.personal.config;

import com.baddragon.personal.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import org.springframework.security.crypto.password.NoOpPasswordEncoder;


import javax.sql.DataSource;

@Configuration              //at the start of application configuring WebSecurity
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserService userService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                    .antMatchers("/", "/about", "/registration").permitAll()
                    .anyRequest().authenticated()
                .and()
                    .formLogin()
                    .loginPage("/login")
                    .permitAll()
                .and()
                    .logout()
                    .permitAll();
    }

    @Override //the static picture did not work on page /about
    public void configure(WebSecurity web) {

        web.ignoring().antMatchers(
                "/images/aboutpic.jpg",
                "/images/**"
        );

    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService)
//                .dataSource(dataSource)
                .passwordEncoder(NoOpPasswordEncoder.getInstance()); //deprecated, but will be replaced soon
//                .usersByUsernameQuery("select username, password, active from usr where username=?") //allows the system find user by username
//                .authoritiesByUsernameQuery("select u.username, ur.roles from usr u join user_role ur " +
//                        "on (u.id = ur.user_id) where u.username=?"); //allows spring get list of users with their roles

    }
}