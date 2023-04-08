package com.fernandes.digitalacademy.services.impl;

import com.fernandes.digitalacademy.entities.User;
import com.fernandes.digitalacademy.model.request.UserRequest;
import com.fernandes.digitalacademy.repositories.UserRepository;
import com.fernandes.digitalacademy.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository repository;

    @Override
    public Page<User> findAllPaged(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public User findByID(Long id) {
        return null;
    }

    @Override
    public User insert(UserRequest userRequest) {
        return null;
    }

    @Override
    public User update(Long id, UserRequest UserRequest) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }
}
