CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;


create table if not exists user(
                                   id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                   first_name varchar(50) NOT NULL,
                                   last_name varchar(50) NOT NULL,
                                   password varchar(50) NOT NULL,
                                   email varchar(200) NOT NULL);

create table if not exists ad(
                                 id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                 title varchar(200) NOT NULL,
                                 description text not null,
                                 user_id INT UNSIGNED NOT NULL
);

ALTER table ad
    ADD FOREIGN KEY (user_id) references user(id);

create table if not exists category(
                                       id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                       classification varchar(100) not null
);

create table if not exists ad_category(
                                          category_id INT UNSIGNED NOT NULL,
                                          ad_id INT UNSIGNED NOT NULL,
                                          FOREIGN KEY (category_id) references category (id),
                                          FOREIGN KEY (ad_id) references ad (id)
);

INSERT INTO user(first_name, last_name, password, email)
    VALUE('chris', 'merritt', 'password1', 'chris@test.com'),
    ('Kenny', 'Pittman', 'password2', 'Kenny@test.com'),
    ('Alfredo', 'Oviedo', 'password3', 'alfredo@test.com');

INSERT INTO ad(title, description,user_id)
    VALUE('moped', 'it goes vroom vroom',(select id from user Where first_name = 'chris')),
    ('harley', 'it goes vroom vroom', (select id from user Where first_name = 'Kenny')),
    ('help wanted', 'fixx my moped', (select id from user Where first_name = 'Alfredo'));

INSERT INTO category(classification)
    VALUE('help wanted'),
    ('for sale'),
    ('miscellanious');

INSERT INTO ad_category(category_id, ad_id)
    VALUE (2,1),
    (2,2),
    (1,3);

SELECT email from user
                      JOIN ad a on user.id = a.user_id
WHERE a.user_id = 1;