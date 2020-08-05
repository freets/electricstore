package by.barca.electricstore.common.repo;

import by.barca.electricstore.common.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {



}
