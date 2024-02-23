package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(@RequestParam("email") String email , @RequestParam("name") String name , @RequestParam("password") String password,Model model) {
		System.out.println(email);
		System.out.println(name);
		System.out.println(password);

		model.addAttribute("email",email);
		model.addAttribute("name",name);
		model.addAttribute("password",password);


		return "success";
	}
}
