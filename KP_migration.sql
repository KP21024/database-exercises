USE KP;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id  INT UNSIGNED NOT NULL Auto_increment,
                        artist VARCHAR(200),
                        name VARCHAR(200) NOT NULL,
                        release_date INT ,
                        sales FLOAT,
                        genre VARCHAR(100),
                        PRIMARY KEY(id)
);
