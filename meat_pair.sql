CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS meat_pairing (
    wine_uid UUID REFERENCES wine_list(wine_uid),
    wine VARCHAR(25) NOT NULL,
    color VARCHAR(25) NOT NULL,
    meat VARCHAR(25) NOT NULL
);


INSERT INTO meat_pairing(wine_uid, wine, color, meat)
    SELECT wine_uid,
    wine_name AS wine,
    wine_type AS color,
    meat_name AS meat
    FROM wine_list
    INNER JOIN meat_list
        ON wine_list.meat_uid = meat_list.meat_uid;