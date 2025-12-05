package de.steinuntersteinen.hotel.repo;

import de.steinuntersteinen.hotel.model.Reservation;
import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReservationRepositoryImpl implements ReservationRepository {

    private final EntityManager entityManager;

    @Autowired
    public ReservationRepositoryImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public List<Reservation> findAll() {
        return entityManager
                .createQuery("FROM Reservation", Reservation.class)
                .getResultList();
    }
}
