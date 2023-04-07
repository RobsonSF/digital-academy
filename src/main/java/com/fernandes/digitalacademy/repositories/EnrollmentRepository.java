package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Enrollment;
import com.fernandes.digitalacademy.entities.pk.EnrollmentId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentId> {
}
