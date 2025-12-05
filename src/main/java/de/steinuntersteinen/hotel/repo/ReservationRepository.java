package de.steinuntersteinen.hotel.repo;

import de.steinuntersteinen.hotel.model.Reservation;

import java.util.List;

public interface ReservationRepository {

    List<Reservation> findAll();

}
