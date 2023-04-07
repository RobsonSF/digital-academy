package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Offer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OfferRepository extends JpaRepository<Offer, Long> {
}
