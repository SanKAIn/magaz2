DELETE FROM brands;
DELETE FROM carts;
DELETE FROM category;
DELETE FROM details;
DELETE FROM passing_goods;
DELETE FROM users;
DELETE FROM user_roles;


ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password, phone) VALUES
  ('User', 'user@yandex.ru', '{noop}password', '0501234567'),
  ('Admin', 'admin@gmail.com', '{noop}admin', '0991326547');

INSERT INTO user_roles (role, user_id) VALUES
  ('USER', 100000),
  ('ADMIN', 100001),
  ('USER', 100001);

INSERT INTO brands (name, country, description) VALUES
    ('Kamaz', 'Russia', 'грузовой'),
    ('LADA',  'Russia', 'легковой');

INSERT INTO details (id_1c, id_brand, id_category, part_name, vendor_code, price, amount, comments) VALUES
    (1, 100002, 100019, 'редуктор',         5412, 11, 121, 'koment 1'),
    (2, 100002, 100020, 'поршень',          5412, 12, 122, 'koment 2'),
    (3, 0,      100024, 'аккумулятор',      5412, 13, 123, 'koment 3'),
    (4, 0,      100023, 'прокладка головки',5412, 14, 124, 'koment 4'),
    (5, 0,      100025, 'свеча',            5412, 15, 125, 'koment 5'),
    (6, 0,      100022, 'тосол',            5412, 16, 126, 'koment 6'),
    (7, 0,      100022, 'масло',            5412, 17, 127, 'koment 7'),
    (8, 0,      100023, 'подшипник',        5412, 18, 128, 'koment 8'),
    (9, 0,      100020, 'крыло',            5412, 19, 129, 'koment 9'),
    (10, 0,     100023, 'болт',             5412, 20, 130, 'koment 10'),
    (11, 0,     100021, 'шланг',            5412, 21, 131, 'koment 11'),
    (12, 0,     100021, 'тормозной диск',   5412, 22, 132, 'koment 12'),
    (13, 0,     100021, 'суппорт',          5412, 23, 133, 'koment 13'),
    (14, 0,     100023, 'золотник',         7484, 10, 134, 'koment 14'),
    (15, 0,     100023, 'золотник',         7484, 10, 134, 'koment 14');

INSERT INTO category (name, parent) VALUES
    ('двигатель',           null),
    ('шасси',               null),
    ('кузов',               null),
    ('механизм КШМ',        100019),
    ('механизм ГРМ',        100019),
    ('система охлаждения',  100019),
    ('система смазки',      100019),
    ('система питания',     100019),
    ('ходовая',             100020),
    ('трансмиссия',         100020),
    ('механизм управления', 100020),
    ('платформа',           100021),
    ('кабина',              100021),
    ('оперение',            100021),
    ('рама',                100027),
    ('мосты',               100027),
    ('подвеска',            100027),
    ('колеса',              100028),
    ('сцепление',           100028),
    ('коробка передач',     100028),
    ('карданная передача',  100028),
    ('главная передача',    100028),
    ('диференциалы',        100028),
    ('полуоси',             100028),
    ('рулевое управление',  100029),
    ('тормозная система',   100029);

INSERT INTO carts (detail_id, user_id, amount) VALUES
    (100011, 100000, 2);

INSERT INTO passing_goods (passing_id, detail_id) VALUES
    (100005, 100006);