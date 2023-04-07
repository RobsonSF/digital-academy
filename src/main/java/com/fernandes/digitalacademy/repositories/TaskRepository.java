package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Task;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepository extends JpaRepository<Task, Long> {
}
