package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TopicRepository extends JpaRepository<Topic, Long> {
}
