package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCotroller {
	@RequestMapping("/")
	public String home() {
		System.out.println("We are in home controller function");
		return "index";
	}
}
