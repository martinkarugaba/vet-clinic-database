CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered boolean,
    weight_kg DECIMAL(10, 2),
    species VARCHAR(255),
);
