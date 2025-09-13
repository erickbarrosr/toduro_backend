package com.rezentech.toduro.dtos;

import com.rezentech.toduro.entities.User;
import com.rezentech.toduro.projections.UserProjection;

public class UserDTO {

    private final String name;
    private final String email;

    public UserDTO(User entity) {
        this.name = entity.getName();
        this.email = entity.getEmail();
    }

    public UserDTO(UserProjection projection) {
        this.name = projection.getName();
        this.email = projection.getEmail();
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
}
