INSERT INTO public.m_roles (id, role_name)
VALUES (1, 'ADMIN');
INSERT INTO public.m_roles (id, role_name)
VALUES (2, 'USER');

------------------------------------------

INSERT INTO public.m_user_roles (id, role_id, user_id)
VALUES (1, 1, 1);
INSERT INTO public.m_user_roles (id, role_id, user_id)
VALUES (2, 2, 2);
