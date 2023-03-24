package com.trysol.securityconfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	public InMemoryUserDetailsManager detailsManager() {
		UserDetails admin = User.withUsername("bhanu").password("{noop}test123").roles("ADMIN").build();
		UserDetails user = User.withUsername("varma").password("{noop}test123").roles("ADMIN", "EMPLOYEE").build();
		return new InMemoryUserDetailsManager(admin, user);
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeHttpRequests().requestMatchers("/", "/dashboard").hasRole("ADMIN").and()
				.httpBasic().and().formLogin(form -> form.loginPage("/login").defaultSuccessUrl("/").loginProcessingUrl("/login").permitAll())
				.authenticationManager(AuthenticationManager(http)).logout().permitAll();
		return http.build();
	}

	@Bean
	public AuthenticationManager AuthenticationManager(HttpSecurity http) throws Exception {
		return http.getSharedObject(AuthenticationManagerBuilder.class).userDetailsService(detailsManager()).and()
				.build();
	}

}
