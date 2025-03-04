SET search_path TO tehradar;

INSERT INTO roles (role_name) VALUES
    ('Администратор'),                 -- role_id = 1
    ('Специалист'),                    -- role_id = 2
    ('Неавторизованный пользователь'); -- role_id = 3

INSERT INTO categories (cat_name) VALUES
    ('Backend'),
    ('Frontend'),
    ('iOS'),
    ('Android');

INSERT INTO sections (sec_name) VALUES
    ('Languages'),
    ('Tools'),
    ('Techniques'),
    ('Platforms');

INSERT INTO rings (ring_name, sec_id) VALUES
    ('ADOPT', 1),
    ('TRIAL', 2),
    ('ASSESS', 3),
    ('HOLD', 4);

INSERT INTO technologies (name, cat_id, characteristics) VALUES
    ('Java', 1, '{"version": "17", "description": "Язык программирования"}'),
    ('React', 2, '{"version": "18", "description": "Библиотека для frontend"}');

INSERT INTO statuses (stat_name, tech_id, update_time) VALUES
    ('MOVED_UP', 1, CURRENT_TIMESTAMP),
    ('NEW', 2, CURRENT_TIMESTAMP);

INSERT INTO users (role_id, login, password, refresh_token) VALUES ();

INSERT INTO polls (user_id, tech_id, ring_id, time) VALUES
    (1, 1, 1, CURRENT_TIMESTAMP),
    (2,2, 2, CURRENT_TIMESTAMP);

INSERT INTO functions (func_name) VALUES
    ('Вход/регистрация'),
    ('Просмотр текстовых данных'),
    ('Форматирование текстовых данных'),
    ('Экспорт текстовых данных PDF/CSV'),
    ('Группировка текстовых данных по командам'),
    ('Голосование за распределение продуктов'),
    ('Добавление продукта в каталог технологий'),
    ('Просмотр каталога технологий'),
    ('Просмотр данных по продукту'),
    ('Архивация/Удаление/Реактивация продукта'),
    ('Поиск, сортировка, фильтрация по каталогу технологий');