INSERT INTO public.m_product_category (id, title, description)
VALUES (nextval('product_category_seq'), 'Automation', 'Drives, Softstarters, Starters, Relays, Sensors');
INSERT INTO public.m_product_category (id, title, description)
VALUES (nextval('product_category_seq'), 'Batteries', 'Automotive, ATV, Golf Cart, Marine, Commercial, Deep Cycle');


INSERT INTO public.m_product (id, title, description, category_id, price, in_stock)
VALUES (nextval('product_seq'), '3-Pole Fusible Disconnect Switch 100 Amp 600 Volt', 'ABB Inc OS100GJ03 3-Pole Fusible Disconnect Switch 100 Amp 600 Volt J-Fuse', 1, 25.0, true);
INSERT INTO public.m_product (id, title, description, category_id, price, in_stock)
VALUES (nextval('product_seq'), 'Group BCI 840 CCA', 'Atlasbx 4DLT-840 Group BCI 840 CCA Commercial Series Battery', 2, 105.0, true);
