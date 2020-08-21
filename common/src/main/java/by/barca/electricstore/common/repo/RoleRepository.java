package by.barca.electricstore.common.repo;

import by.barca.electricstore.common.domain.Role;
import by.barca.electricstore.common.domain.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(Roles name);
}
