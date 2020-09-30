create table m_role
(
    id          bigserial   not null
        constraint m_role_pk
            primary key,
    name   varchar(50) not null
);

alter table m_role
    owner to electricstoreadmin;

create index m_role_role_name_index
    on m_role (name);

-----------------------------------------

create table m_user_role
(
    role_id     bigint not null
        constraint m_role_id_fk
            references m_role
            on update cascade on delete cascade,
    user_id     bigint  not null
        constraint m_user_id_fk
            references m_user
            on update cascade on delete cascade
);

alter table m_user_role
    owner to electricstoreadmin;
