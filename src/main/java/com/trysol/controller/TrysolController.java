package com.trysol.controller;

import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@EnableWebSecurity
@Controller
public class TrysolController {
	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}
	@GetMapping("/dashboard")
	public String getDashboard() {
		return "dashboard";
	}
}
