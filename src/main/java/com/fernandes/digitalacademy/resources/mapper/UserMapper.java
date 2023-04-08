package com.fernandes.digitalacademy.resources.mapper;

import com.fernandes.digitalacademy.entities.User;
import com.fernandes.digitalacademy.model.response.UserResponse;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface UserMapper {

    UserResponse toUserResponse(User user);
}
