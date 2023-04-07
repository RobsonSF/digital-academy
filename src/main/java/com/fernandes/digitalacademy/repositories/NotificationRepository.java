package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Notification;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<Notification, Long> {
}
