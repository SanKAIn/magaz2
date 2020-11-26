DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS details CASCADE;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS carts;
DROP TABLE IF EXISTS passing_goods;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START WITH 100000;

CREATE TABLE users
(
  id                    INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  name                  VARCHAR                 NOT NULL,
  email                 VARCHAR                 NOT NULL,
  password              VARCHAR                 NOT NULL,
  registered            TIMESTAMP DEFAULT now() NOT NULL,
  enabled               BOOL DEFAULT TRUE       NOT NULL,
  phone                 VARCHAR                 NOT NULL
);
CREATE UNIQUE INDEX users_unique_email_idx ON users (email);

CREATE TABLE user_roles
(
  user_id               INTEGER NOT NULL,
  role                  VARCHAR,
  CONSTRAINT user_roles_idx UNIQUE (user_id, role),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE details (
    id                  INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    id_1c               INTEGER             NOT NULL,
    id_brand            INTEGER             DEFAULT 0,
    id_category         INTEGER             DEFAULT 0,
    part_name           VARCHAR             NOT NULL,
    part_name_ukr       VARCHAR             DEFAULT 'нет',
    vendor_code         VARCHAR             NOT NULL,
    price               INTEGER             DEFAULT 0,
    image               VARCHAR             DEFAULT 'icon.png',
    amount              double precision    DEFAULT 0,
    comments            VARCHAR             DEFAULT 'нет'
);

CREATE TABLE brands (
    id                  INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    name                VARCHAR             NOT NULL,
    country             VARCHAR,
    logo                varchar             DEFAULT 'icon.png',
    description         VARCHAR             DEFAULT '!?!'
);

CREATE TABLE category (
    id                  INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    parent              INTEGER             DEFAULT NULL,
    name                VARCHAR,
    description         VARCHAR,
    image               VARCHAR
);

CREATE TABLE carts (
    detail_id           INTEGER             NOT NULL,
    user_id             INTEGER,
    amount              INTEGER,
    session             VARCHAR
);

CREATE TABLE passing_goods
(
    passing_id          INTEGER NOT NULL,
    detail_id           INTEGER,
    FOREIGN KEY (detail_id) REFERENCES details (id) ON DELETE CASCADE
);