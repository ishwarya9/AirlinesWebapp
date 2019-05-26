package com.ishwarya.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.ishwarya.app.model.Flight;
import java.util.Optional;
import com.ishwarya.app.repositories.FlightRepository;
import com.ishwarya.app.services.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	FlightRepository flightRepository;
	@Autowired
	ReservationService reservationService;
	
	private static final Logger LOGGER=LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping("/getCompleteReservation")
	public String getCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap)
	{
		 LOGGER.info("Inside getCompleteReservation method : " + flightId);
		
		Optional<Flight> flight = flightRepository.findById(flightId);
		modelMap.addAttribute("flight",flight.get());
		 return "reservation/completeReservation";
		 
		
	}


    @RequestMapping(value = "/completeReservation",method = RequestMethod.POST)
	public String completeReservation(com.ishwarya.app.dto.ReservationRequest reservationRequest, ModelMap modelMap)
	{
		
    	LOGGER.info("completeReservation() "+reservationRequest);
		com.ishwarya.app.model.Reservation reservation = reservationService.bookFlight(reservationRequest);
		modelMap.addAttribute("msg", "Reservation created successfully and the id is " + reservation.getId());
		return "reservation/reservationConfirmation";
		 
		
	}
}
