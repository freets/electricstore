create table m_delivery_address
(
    id              bigserial     not null
                    constraint m_delivery_address_pk
                    primary key,
    user_id         bigint not null
                    constraint m_delivery_address_user_fk
                        references m_user(id)
                        on update cascade on delete cascade,
    country         varchar(100),
    region          varchar(100),
    city            varchar(100),
    postal_code     varchar(15),
    address_1       varchar(100),
    address_2       varchar(100),
    phone           varchar(15)
);

alter table m_delivery_address
    owner to electricstoreadmin;

create sequence delivery_address_seq start 1;