package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
}
