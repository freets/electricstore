package by.barca.electricstore.common.domain;

import lombok.*;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.*;

@Setter
@Getter
@RequiredArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "m_users")
public class User implements Serializable {

    @Id
    @SequenceGenerator(name = "user_seq", sequenceName = "user_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
    // @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String username;

    @Column
    private String surname;

    @Column(name = "birth_date")
    private Date birthDate;

    @Column
    private String login;

    @Column
    private String password;

    @Column
    private Date created;

    @Column
    private Date updated;

    @Column(name = "is_blocked")
    private boolean isBlocked;

    @Column
    @Enumerated(EnumType.STRING)
    private Gender gender = Gender.NOT_SELECTED;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(	name = "m_user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

}
