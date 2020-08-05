create table m_users
(
    id          bigserial                                                  not null
                constraint m_users_pk
                primary key,
    username    varchar(200)  default 'DEFAULT_NAME'::character varying    not null,
    surname     varchar(1000) default 'DEFAULT_SURNAME'::character varying not null,
    birth_date  date,
    login       varchar(100)                                               not null,
    password    varchar(1000) default '123'::character varying             not null,
    created     timestamp(6),
    updated     timestamp(6),
    is_blocked  boolean       default false                                not null,
    gender      varchar(50)   default 'NOT_SELECTED'::character varying    not null
);

alter table m_users
    owner to electricstoreadmin;

create unique index m_users_login_index
    on m_users (login);

create sequence user_seq start 1;