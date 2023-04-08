package com.fernandes.digitalacademy.services.mapper;

import com.fernandes.digitalacademy.entities.User;
import com.fernandes.digitalacademy.model.request.UserRequest;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface UserRequestMapper {

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "roles", ignore = true)
    @Mapping(target = "notifications", ignore = true)
    User toUserEntity(UserRequest userRequest);
}
