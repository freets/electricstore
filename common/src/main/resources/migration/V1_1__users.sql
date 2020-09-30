create table m_user
(
    id          bigserial     not null
                constraint m_user_pk
                primary key,
    username    varchar(200)  not null,
    surname     varchar(1000) not null,
    birth_date  date,
    login       varchar(100)  not null,
    password    varchar(1000) not null,
    created     timestamp(6),
    updated     timestamp(6),
    is_blocked  boolean       default false                                not null,
    gender      varchar(50)   default 'NOT_SELECTED'::character varying    not null
);

alter table m_user
    owner to electricstoreadmin;

create unique index m_user_login_index
    on m_user (login);

create sequence user_seq start 1;