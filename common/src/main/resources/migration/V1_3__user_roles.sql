create table m_roles
(
    id          bigserial   not null
        constraint m_roles_pk
            primary key,
    role_name   varchar(50) not null
);

alter table m_roles
    owner to electricstoreadmin;

create index m_roles_role_name_index
    on m_roles (role_name);

-----------------------------------------

create table m_user_roles
(
    id          bigserial   not null
        constraint m_user_role_pk
            primary key,
    role_id     bigint not null
        constraint m_role_id_fk
            references m_roles
            on update cascade on delete cascade,
    user_id     bigint  not null
        constraint m_user_id_fk
            references m_users
            on update cascade on delete cascade
);

alter table m_user_roles
    owner to electricstoreadmin;
