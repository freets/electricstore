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
@Table(name = "m_product")
public class Product {

    @Id
    @SequenceGenerator(name = "product_seq", sequenceName = "product_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_seq")
    private Integer id;

    @Column
    private String title;

    @Column
    private String description;

    @Column
    private float price;

    @Column(name = "in_stock")
    private boolean inStock;

}
