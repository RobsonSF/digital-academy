package com.fernandes.digitalacademy.services.impl;

import com.fernandes.digitalacademy.entities.User;
import com.fernandes.digitalacademy.model.request.UserRequest;
import com.fernandes.digitalacademy.repositories.UserRepository;
import com.fernandes.digitalacademy.services.UserService;
import com.fernandes.digitalacademy.services.exceptions.ResourceNotFoundException;
import com.fernandes.digitalacademy.services.mapper.UserRequestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository repository;

    @Autowired
    private UserRequestMapper mapper;

    @Override
    public Page<User> findAllPaged(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public User findById(Long id) {
        var optionalUser = repository.findById(id);
        return optionalUser.orElseThrow(
                () -> new ResourceNotFoundException("User not found")
        );
    }

    @Override
    public User insert(UserRequest userRequest) {
        var user = mapper.toUserEntity(userRequest);
        return repository.save(user);
    }

    @Override
    public User update(Long id, UserRequest userRequest) {
        var referenceId = repository.getReferenceById(id);
        var user = mapper.toUserEntity(userRequest);
        user.setId(referenceId.getId());
        return repository.save(user);
    }

    @Override
    public void delete(Long id) {

    }
}
