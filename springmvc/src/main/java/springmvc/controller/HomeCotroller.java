package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCotroller {

	@RequestMapping("/home")
	public String home() {
		System.out.println("We are in home controller function");
		return "index";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("Smile please!! You are in about page");
		return "about";
	}

	@RequestMapping("/services")
	public String services() {
		System.out.println("this is services page");
		return "services";
	}
}
