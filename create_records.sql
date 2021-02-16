CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

insert into wine_list(wine_uid, wine_name, wine_type) values
    (uuid_generate_v4(), 'Cabernet Sauvignon', 'Red'),
    (uuid_generate_v4(), 'Pinot Noir', 'Red'),
    (uuid_generate_v4(), 'Malbec', 'Red'),
    (uuid_generate_v4(), 'Chardonnay', 'White'),
    (uuid_generate_v4(), 'Pinot Grigio', 'White'),
    (uuid_generate_v4(), 'Sauvignon Blanc', 'White'),
    (uuid_generate_v4(), 'Grenache', 'Rose'),
    (uuid_generate_v4(), 'Sangiovese', 'Rose'),
    (uuid_generate_v4(), 'Tempranillo', 'Rose');

insert into cheese_list(cheese_uid, cheese_name, cheese_country) values
    (uuid_generate_v4(), 'Guyere', 'Switzerland'),
    (uuid_generate_v4(), 'Pecorino Romano', 'Italy'),
    (uuid_generate_v4(), 'Parmigiano Reggiano', 'Italy'),
    (uuid_generate_v4(), 'Brie', 'France'),
    (uuid_generate_v4(), 'Feta', 'Greece'),
    (uuid_generate_v4(), 'Gouda', 'Netherlands'),
    (uuid_generate_v4(), 'Cheddar', 'USA'),
    (uuid_generate_v4(), 'Havarti', 'Denmark'),
    (uuid_generate_v4(), 'Muenster', 'USA');

insert into meat_list(meat_uid, meat_name) values
    (uuid_generate_v4(), 'Steak'),
    (uuid_generate_v4(), 'Lamb'),
    (uuid_generate_v4(), 'Duck'),
    (uuid_generate_v4(), 'Turkey'),
    (uuid_generate_v4(), 'Tilapia'),
    (uuid_generate_v4(), 'Cod'),
    (uuid_generate_v4(), 'Salmon'),
    (uuid_generate_v4(), 'Chicken'),
    (uuid_generate_v4(), 'Sausage');