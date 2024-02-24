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

		// here we have got 3 tasks to do 
		// 1. Getting user data from view to controller (contact html form ) 
		// 2. Fetching this data to view  (@RequestForm)
		// 3. Viewing this data to other view , here it is "success.jsp" {model.addAttribute("password",password);}

		// what if we can do this using only one thing . Its given below.

		System.out.println(email);
		System.out.println(name);
		System.out.println(password);

		//		User user = new User();
		//		user.setEmail(email);
		//		user.setName(name);
		//		user.setPassword(password);


		//		model.addAttribute("email",email);
		//		model.addAttribute("name",name);
		//		model.addAttribute("password",password);

		//		model.addAttribute("user" ,user);

		return "success";
	}
}
