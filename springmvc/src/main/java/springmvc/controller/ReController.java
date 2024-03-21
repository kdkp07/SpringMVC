package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReController {

	@RequestMapping("/hod")
	public String hod() {
		System.out.print("hod here");
		return "";
	}

	@RequestMapping("/dean")
	public String dean() {
		//		System.out.println("Dean here");
		return "redirect:/hod";
	}
}
