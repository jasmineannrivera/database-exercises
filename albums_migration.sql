
USE codeup_test_db;
-- Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(124) DEFAULT 'NONE',
    name VARCHAR(125) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(500) DEFAULT 'NONE',
    PRIMARY KEY (id)
);