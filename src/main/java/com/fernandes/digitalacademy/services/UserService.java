package com.fernandes.digitalacademy.services;

import com.fernandes.digitalacademy.entities.User;
import com.fernandes.digitalacademy.model.request.UserRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

public interface UserService {

    @Transactional(readOnly = true)
    Page<User> findAllPaged(Pageable pageable);

    @Transactional(readOnly = true)
    User findById(Long id);

    @Transactional

    User insert(UserRequest userRequest);

    @Transactional
    User update(Long id, UserRequest userRequest);

    void delete(Long id);
}
