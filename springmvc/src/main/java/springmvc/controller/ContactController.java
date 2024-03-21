package springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.userService;

@Controller
public class ContactController {

	@Autowired
	private userService service;

	@ModelAttribute
	public void commonData(Model model) {
		System.out.println("Inside common function");
		model.addAttribute("Header","User Registration form");
		model.addAttribute("Desc","Please fill in the below details");
	}

	@RequestMapping("/contact")
	public String contact() {
		System.out.println("Inside contact form");
		//		this.service.getUsers();
		return "contact";
	}

	@RequestMapping("/viewUsers")
	public String view(Model model) {
		List<User> li = this.service.getUsers();
		model.addAttribute("users",li);
		return "viewUsers";
	}


	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user , Model model) {
		System.out.println("Inside handleForm");
		// saving the user in db.
		List<User> li = this.service.getUsers();
		for(User u : li) {
			if(user.getId()==u.getId()) {
				model.addAttribute("DupUser","User already exists...");
				return "contact";
			}
		}


		/// duplicate id not found , create user

		this.service.createUser(user);
		model.addAttribute("msg","User created");
		return "success";
	}

	@RequestMapping("/userLogin")
	public String userLogin() {
		return "userLogin";
	}

	@RequestMapping(path = "/userLoginForm",method = RequestMethod.POST)
	public String userLoginForm(@ModelAttribute User user , Model model) {
		List<User> li = this.service.getUsers();
		for(User u : li) {
			if(u.getEmail()==user.getEmail() && u.getPassword()==user.getPassword()) {		// user matched
				model.addAttribute("userName",user.getName());
				return "userView";
			}
		}
		model.addAttribute("invalid-cred","Invalid User credentials");
		return "userLogin";
	}
}





/*
@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String handleForm(@RequestParam("email") String email , @RequestParam("name") String name , @RequestParam("password") String password,Model model) {

		// here we have got 3 tasks to do 
		// 1. Getting user data from view to controller (contact html form ) 
		// 2. Fetching this data to view  (@RequestForm)
		// 3. Viewing this data to other view , here it is "success.jsp" {model.addAttribute("password",password);}

		// what if we can do this using only one thing . Its given below.

		//		System.out.println(email);
		//		System.out.println(name);
		//		System.out.println(password);

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

 */