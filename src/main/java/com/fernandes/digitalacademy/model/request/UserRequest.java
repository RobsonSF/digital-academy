package com.fernandes.digitalacademy.model.request;
public record UserRequest(
        String name,
        String email,
        String password
) {}
