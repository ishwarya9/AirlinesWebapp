package com.ishwarya.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ishwarya.app.model.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
