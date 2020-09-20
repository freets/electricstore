create table m_product_category
(
    id              bigserial     not null
                    constraint m_product_category_pk
                    primary key,
    title           varchar(100)  not null,
    description     varchar(1000) not null
);

alter table m_product_category
    owner to electricstoreadmin;

create unique index m_prodcat_title_index
    on m_product_category(title);

create sequence product_category_seq start 1;

create table m_product
(
    id              bigserial     not null
                    constraint m_product_pk
                    primary key,
    title           varchar(100)  not null,
    description     varchar(1000) not null,
    category_id     bigint not null
                    constraint m_product_category_id_fk
                        references m_product_category(id)
                        on update cascade on delete cascade,
    price           float not null,
    in_stock        boolean default false
);

alter table m_product
    owner to electricstoreadmin;

create unique index m_product_title_index
    on m_product(title);

create unique index m_product_desc_index
    on m_product(description);

create sequence product_seq start 1;