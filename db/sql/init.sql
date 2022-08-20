CREATE SCHEMA IF NOT EXISTS Test;
USE Test;

DROP TABLE IF EXISTS TestItem;

CREATE TABLE TestItem(
    Id INT UNSIGNED NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO TestItem(Id)
VALUES (1), (2), (3), (4), (5);