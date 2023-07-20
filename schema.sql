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

--Day 4

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    vet_id INTEGER REFERENCES vets(id),
    species_id INTEGER REFERENCES species(id),
    PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
    visit_id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES animals(id),
    vet_id INTEGER REFERENCES vets(id),
    visit_date DATE
);




