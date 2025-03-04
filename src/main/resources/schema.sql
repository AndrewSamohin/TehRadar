CREATE SCHEMA IF NOT EXISTS tehradar;

SET search_path TO tehradar;

CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    role_id INTEGER REFERENCES roles(role_id),
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    refresh_token VARCHAR(255)
);

CREATE TABLE categories (
    cat_id SERIAL PRIMARY KEY,
    cat_name VARCHAR(50) NOT NULL
);

CREATE TABLE sections (
    sec_id SERIAL PRIMARY KEY,
    sec_name VARCHAR(50) NOT NULL
);

CREATE TABLE rings (
    ring_id SERIAL PRIMARY KEY,
    ring_name VARCHAR(50) NOT NULL,
    sec_id INTEGER REFERENCES sections(sec_id) --Внешний ключ на таблицу sections
);

CREATE TABLE technologies (
    tech_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    cat_id INTEGER REFERENCES categories(cat_id),-- Внешний ключ на таблицу categories
    characteristics JSONB       -- Характеристики технологии в формате JSON
)

CREATE TABLE statuses (
    stat_id SERIAL PRIMARY KEY,
    stat_name VARCHAR(50) NOT NULL,
    tech_id INTEGER REFERENCES technologies(tech_id),-- Внешний ключ на таблицу technologies
    update_time TIMESTAMP -- Время обновления статуса
);

CREATE TABLE polls (
    poll_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    tech_id INTEGER REFERENCES technologies(tech_id),
    ring_id INTEGER REFERENCES rings(ring_id),
    time TIMESTAMP          -- Время проведения опроса
);
-- функции системы
CREATE TABLE functions (
    func_id SERIAL PRIMARY KEY,
    func_name VARCHAR(50) NOT NULL
);

CREATE TABLE mapping (
    id SERIAL PRIMARY KEY,
    func_id INTEGER REFERENCES functions(func_id),
    role_id INTEGER REFERENCES roles(role_id)
);

