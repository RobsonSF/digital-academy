package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
