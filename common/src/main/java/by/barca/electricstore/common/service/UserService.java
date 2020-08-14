package by.barca.electricstore.common.service;

import by.barca.electricstore.common.domain.User;

import java.util.Optional;

public interface UserService {

    User save(User user);

    Optional<User> findOne(Long id);

    void delete(Long id);

}
