package by.barca.electricstore.common.service;

import by.barca.electricstore.common.domain.ESUser;
import by.barca.electricstore.common.domain.User;
import by.barca.electricstore.common.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class ESUserDetailsService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        User user = userRepository.findByUsername(s).orElseThrow(() -> new UsernameNotFoundException("User Not Found with username: " + s));;

        return ESUser.build(user);
    }

}
