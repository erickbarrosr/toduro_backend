package com.rezentech.toduro.repositories;

import com.rezentech.toduro.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
