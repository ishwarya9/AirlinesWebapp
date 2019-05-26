package com.ishwarya.app.controller;

import java.util.Date;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ishwarya.app.model.Flight;
import com.ishwarya.app.repositories.FlightRepository;


@Controller
public class FlightController 
{
	@Autowired
	FlightRepository flightRepository;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(FlightController.class);
	
	@RequestMapping("/getFlights")
	public String getFlights(@RequestParam("from") String from,@RequestParam("to") String to, 
			@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate,ModelMap modelMap )
	{
		List<Flight> flights = flightRepository.findFlights(from, to,departureDate );
		LOGGER.info("Inside findFlights() From:"+from+"TO:"+to+"Departure date"+departureDate);
		modelMap.addAttribute("flights",flights);
		LOGGER.info("Flights found are:"+flights.get(0).getId());
		return "displayFlights";
	}
	
	 @RequestMapping("/getAddFlight")
	    public String AddFlight(){
	        return "addFlight";
	    }
	
	 @RequestMapping(value="/addFlight", method=RequestMethod.POST)
	    public String addFlight(@ModelAttribute("addflight") Flight flight,ModelMap modelmap){
		 LOGGER.info("Inside addFlight- get departure:"+flight.getDateOfDeparture());
	       flightRepository.save(flight);
	       modelmap.addAttribute("msg","Flight Added Successfully");
	       return "addFlight";
	    }


}
