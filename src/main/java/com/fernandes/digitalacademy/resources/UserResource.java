package com.fernandes.digitalacademy.resources;

import com.fernandes.digitalacademy.model.request.UserRequest;
import com.fernandes.digitalacademy.model.response.UserResponse;
import com.fernandes.digitalacademy.resources.mapper.UserMapper;
import com.fernandes.digitalacademy.services.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/users")
public class UserResource {

    @Autowired
    private UserServiceImpl service;

    @Autowired
    private UserMapper  mapper;

    @GetMapping
    public ResponseEntity<Page<UserResponse>> findAllPaged(Pageable pageable) {
        var users = service.findAllPaged(pageable);
        var userResponse = users.map(mapper::toUserResponse);
        return ResponseEntity.ok().body(userResponse);
    }

    @GetMapping("/{id}")
    public ResponseEntity<UserResponse> findById(@PathVariable("id") Long id) {
        var user = service.findById(id);
        var userResponse = mapper.toUserResponse(user);
        return ResponseEntity.ok().body(userResponse);
    }

    @PostMapping
    public ResponseEntity<UserResponse> insert(@RequestBody UserRequest userRequest) {
        var user = service.insert(userRequest);
        var userResponse = mapper.toUserResponse(user);
        return ResponseEntity.ok().body(userResponse);
    }

    @PutMapping("/{id}")
    public ResponseEntity<UserResponse> update(@PathVariable("id") Long id, @RequestBody UserRequest userRequest) {
        var user = service.update(id, userRequest);
        var userResponse = mapper.toUserResponse(user);
        return ResponseEntity.ok().body(userResponse);
    }
}
