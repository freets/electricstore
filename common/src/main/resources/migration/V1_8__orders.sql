create table m_order
(
    id              bigserial     not null
                    constraint m_order_pk
                    primary key,
    user_id         bigint not null
                    constraint m_cart_user_fk
                        references m_user(id)
                        on update cascade on delete cascade,
    sub_total       float not null,
    total           float not null,
    country         varchar(100),
    region          varchar(100),
    city            varchar(100),
    postal_code     varchar(15),
    address_1       varchar(100),
    address_2       varchar(100),
    phone           varchar(15),
    created         timestamp(6),
    updated         timestamp(6)
);

alter table m_order
    owner to electricstoreadmin;

create sequence order_seq start 1;

create table m_order_item
(
    id              bigserial     not null
                    constraint m_order_item_pk
                    primary key,
    order_id        bigint not null
                    constraint m_order_id_fk
                        references m_order(id)
                        on update cascade on delete cascade,
    product_id      bigint not null
                    constraint m_cart_product_id_fk
                        references m_product(id)
                        on update cascade on delete cascade,
    price           float not null,
    quantity        bigint not null
);

alter table m_order_item
    owner to electricstoreadmin;

create sequence order_item_seq start 1;