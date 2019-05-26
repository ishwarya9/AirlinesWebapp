package com.ishwarya.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ishwarya.app.model.Passenger;

@Repository
public interface PassengerRepository extends JpaRepository<Passenger,Long>{

}
