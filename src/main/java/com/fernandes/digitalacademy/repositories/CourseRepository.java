package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Long> {
}
