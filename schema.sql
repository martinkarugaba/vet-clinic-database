--CREATE TABLE animals (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(255),
--    date_of_birth DATE,
--    escape_attempts INT,
--    neutered boolean,
--    weight_kg DECIMAL(10, 2),
--    species VARCHAR(255),
--);

-------------------------------------------------
--DAY 3
-------------------------------------------------

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(10, 2),
    species_id INTEGER REFERENCES species(id),
    owner_id INTEGER REFERENCES owners(id)
);


