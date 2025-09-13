package com.rezentech.toduro.dto;

import com.rezentech.toduro.entities.User;
import org.springframework.beans.BeanUtils;

public class UserDTO {

    private String name;
    private String email;

    public UserDTO() {
    }

    public UserDTO(User entity) {
        BeanUtils.copyProperties(entity, this);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
