CREATE SCHEMA IF NOT EXISTS Test;
USE Test;

DROP TABLE IF EXISTS TestTable;

CREATE TABLE TestTable(
    Id INT UNSIGNED NOT NULL
);

INSERT INTO TestTable(Id)
VALUES (1), (2), (3), (4), (5);