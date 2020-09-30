INSERT INTO public.m_role (id, name)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO public.m_role (id, name)
VALUES (2, 'ROLE_USER');

------------------------------------------

INSERT INTO public.m_user_role (role_id, user_id)
VALUES (1, 1);
INSERT INTO public.m_user_role (role_id, user_id)
VALUES (2, 2);
