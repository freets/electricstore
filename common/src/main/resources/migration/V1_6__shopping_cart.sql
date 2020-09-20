create table m_cart
(
    id              bigserial     not null
                    constraint m_cart_pk
                    primary key,
    user_id         bigint not null
                    constraint m_cart_user_fk
                        references m_user(id)
                        on update cascade on delete cascade,
    created     timestamp(6),
    updated     timestamp(6)
);

alter table m_cart
    owner to electricstoreadmin;

create sequence cart_seq start 1;

create table m_cart_item
(
    id              bigserial     not null
                    constraint m_cart_item_pk
                    primary key,
    cart_id         bigint not null
                    constraint m_cart_id_fk
                        references m_cart(id)
                        on update cascade on delete cascade,
    product_id      bigint not null
                    constraint m_cart_product_id_fk
                        references m_product(id)
                        on update cascade on delete cascade,
    price           float not null,
    quantity        bigint not null
);

alter table m_cart_item
    owner to electricstoreadmin;

create sequence cart_item_seq start 1;