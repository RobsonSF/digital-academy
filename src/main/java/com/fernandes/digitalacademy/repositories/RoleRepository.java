package com.fernandes.digitalacademy.repositories;

import com.fernandes.digitalacademy.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
