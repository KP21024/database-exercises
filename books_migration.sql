Use codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title           VARCHAR (255) NOT NULL,
    author          VARCHAR(100) NOT NULL DEFAULT 'Unknown',
    date_published  DATE NOT NULL,
    description     TEXT NULL,
    bestseller_weeks INT NULL,
    PRIMARY KEY (ID)
);