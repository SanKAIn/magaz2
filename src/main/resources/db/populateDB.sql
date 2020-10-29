DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;
DELETE FROM details;

ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password, phone) VALUES
  ('User', 'user@yandex.ru', '{noop}password', '0501234567'),
  ('Admin', 'admin@gmail.com', '{noop}admin', '0991326547');

INSERT INTO user_roles (role, user_id) VALUES
  ('USER', 100000),
  ('ADMIN', 100001),
  ('USER', 100001);

INSERT INTO meals (date_time, description, calories, user_id)
VALUES ('2020-01-30 10:00:00', 'Завтрак', 501, 100000),
       ('2020-01-30 13:00:00', 'Обед', 1000, 100000),
       ('2020-01-30 20:00:00', 'Ужин', 502, 100000),
       ('2020-01-31 0:00:00', 'Еда на граничное значение', 100, 100000),
       ('2020-01-31 10:00:00', 'Завтрак', 503, 100000),
       ('2020-01-31 13:00:00', 'Обед', 1000, 100000),
       ('2020-01-31 20:00:00', 'Ужин', 511, 100000),
       ('2020-01-31 14:00:00', 'Админ ланч', 512, 100001),
       ('2020-01-31 21:00:00', 'Админ ужин', 1500, 100001);


INSERT INTO details (part_name, amount) VALUES
    ('аккумулятор', 5),
    ('золотник', 10);