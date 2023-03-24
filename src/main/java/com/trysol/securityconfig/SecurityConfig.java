package com.trysol.securityconfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
@EnableWebSecurity
@Configuration
public class SecurityConfig {
	protected void configure(AuthenticationManagerBuilder builder) throws Exception {
		builder.inMemoryAuthentication().withUser("bhanu").password("{noop}test123").roles("ADMIN", "MANAGER");
		builder.inMemoryAuthentication().withUser("kumar").password("{noop}test123").roles("EMPLOYEE");
	}

	protected void configure(HttpSecurity security) throws Exception {
		security.authorizeHttpRequests().requestMatchers("/").hasRole("ADMIN").and().logout().permitAll();
	}

}
