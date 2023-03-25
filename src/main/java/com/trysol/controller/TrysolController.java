package com.trysol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	@GetMapping("/login")
	public String MyLoginPage() {
		return "myloginpage";
	}
	@GetMapping("/welcome")
	public String showWelocmePage() {
		return "welcome";
	}
}
