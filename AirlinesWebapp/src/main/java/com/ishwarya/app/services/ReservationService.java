package com.ishwarya.app.services;

import com.ishwarya.app.dto.ReservationRequest;
import com.ishwarya.app.model.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest reservationRequest);

}
