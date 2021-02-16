CREATE TABLE cheese_list (
    cheese_uid UUID NOT NULL PRIMARY KEY,
    cheese_name VARCHAR(50) NOT NULL,
    cheese_country VARCHAR(50) NOT NULL
);

CREATE TABLE meat_list (
    meat_uid UUID NOT NULL PRIMARY KEY,
    meat_name VARCHAR(50) NOT NULL
);

CREATE TABLE wine_list (
    wine_uid UUID NOT NULL PRIMARY KEY,
    wine_name VARCHAR(50) NOT NULL,
    wine_type VARCHAR(50) NOT NULL,
    cheese_uid UUID REFERENCES cheese_list(cheese_uid),
    UNIQUE(cheese_uid),
    meat_uid UUID REFERENCES meat_list(meat_uid),
    UNIQUE(meat_uid)
);
