package by.barca.electricstore.common.repo;

import by.barca.electricstore.common.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends CrudRepository<User, Long>, JpaRepository<User, Long> {

     Optional<User> findByUsername(String s);

     Boolean existsByUsername(String username);

}
