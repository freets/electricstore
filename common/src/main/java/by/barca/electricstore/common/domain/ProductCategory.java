package by.barca.electricstore.common.domain;


import javax.persistence.*;
import lombok.*;

@Setter
@Getter
@RequiredArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "m_product_category")
public class ProductCategory {

    @Id
    @SequenceGenerator(name = "product_category_seq", sequenceName = "product_category_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_category_seq")
    private Integer id;

    @Column
    private String title;

    @Column
    private String description;

}
