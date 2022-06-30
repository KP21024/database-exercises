USE codeup_test_db;

SELECT * FROM albums Where release_date > 1991;

SELECT * FROM albums WHERE genre = 'DISCO';

SELECT * FROM albums WHERE artist = 'Whitney Houston / Various artists';

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'DISCO';
