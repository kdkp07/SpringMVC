package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeCotroller {

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("We are in home controller function");
		model.addAttribute("name","Kuldeep Patidar");
		model.addAttribute("Id" , 123124);

		// trying to add a collection of objects
		ArrayList<String> li = new ArrayList<String>();
		li.add("C++");li.add("Java");li.add("Python");
		model.addAttribute("Languages",li);
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

	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("Inside help function");
		ModelAndView model = new ModelAndView();
		model.addObject("name","Aakash Bhalla");
		model.addObject("RollNo",201);
		model.addObject("isHungry",false);
		LocalDateTime now = LocalDateTime.now();
		model.addObject("time",now);
		model.setViewName("help");
		return model;
	}
}
