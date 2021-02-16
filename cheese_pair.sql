CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS cheese_pairing (
    wine_uid UUID REFERENCES wine_list(wine_uid),
    wine VARCHAR(25) NOT NULL,
    color VARCHAR(25) NOT NULL,
    cheese VARCHAR(25) NOT NULL
);


INSERT INTO cheese_pairing(wine_uid, wine, color, cheese)
    SELECT wine_uid,
    wine_name AS wine,
    wine_type AS color,
    cheese_name AS cheese
    FROM wine_list
    INNER JOIN cheese_list
        ON wine_list.cheese_uid = cheese_list.cheese_uid;