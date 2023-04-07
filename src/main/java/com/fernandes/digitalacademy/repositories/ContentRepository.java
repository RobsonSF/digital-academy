package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Content;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContentRepository extends JpaRepository<Content, Long> {
}
