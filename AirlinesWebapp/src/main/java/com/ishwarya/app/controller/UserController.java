package com.ishwarya.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.management.relation.Role;

//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ishwarya.app.model.Flight;
import com.ishwarya.app.model.User;
import com.ishwarya.app.repositories.FlightRepository;
import com.ishwarya.app.repositories.UserRepository;


@Controller
public class UserController
{
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private FlightRepository flightRepository;
	
	@RequestMapping("/home")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/getReg")
	public String showRegistrationPage(Model model) {
		
		model.addAttribute("user", new User());
		return "user/registerUser";
	}
	
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String addRegisterUser(@ModelAttribute("user") User user,BindingResult bindingResult ) {
		
		userRepository.save(user);
		return "index";
	}
	
	@RequestMapping("/getLogin")
	public String showLoginPage() {
		
		return "user/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("userName") String userName, @RequestParam("password") String password,
			ModelMap modelMap) {
		
		
		
	    User user = userRepository.findByUserName(userName);
	    //get the list of cities
	    List<Flight> flightList = flightRepository.findAll();
	   /* List<Flight> flightList = flightRepository.findAll();
	    System.out.println("Get 1st Flight " +flightList.get(1));
	    List<String> cities = new ArrayList<String>();
	    for(Flight f:flightList)
	    {
	    	System.out.println("in the loop"+ f.getArrivalCity());
	    	cities.add(f.getArrivalCity());
	    }*/
		if (user.getPassword().equals(password)) {
			System.out.println("get user details " +user.getRoles().toString().contains("ADMIN"));
			{
				if(user.getRoles().toString().contains("ADMIN"))
				{
					return "addFlight";
				}
				modelMap.addAttribute("allFlights", flightList);
				modelMap.addAttribute("Flight", new Flight());
				return "getFlights";
			}
			
		} else {
			modelMap.addAttribute("msg", "Invalid user name or password .Please try again.");
		}

		return "user/login";

	}
}
