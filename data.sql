--day 1
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Agumon',DATE '2020-02-03', 0,true, 10.23);
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Gabumon',DATE '2018-11-15', 2,true, 8);
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Pikachu',DATE '2021-01-07', 1,false, 15.04 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Devimon',DATE '2017-05-12', 5,true, 11 );

--day 2
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Charmander',DATE '2020-02-08', 0,false, -11 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Plantmon',DATE '2021-11-15', 2,true, -5.7 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Squirtle',DATE '1993-04-02', 3,false, -12.13 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Angemon',DATE '2005-06-12', 1,true, -45 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Boarmon',DATE '2005-06-07', 7,true, 20.4 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Blossom',DATE '1998-10-13', 3,true, 17 );
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg) VALUES ('Ditto',DATE '2022-05-14', 4,true, 22 );

--DAY 3
INSERT INTO owners (full_name, age) VALUES
    ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES
    ('Pokemon'),
    ('Digimon');

-------------------------------------------------------
--DAY 4
-------------------------------------------------------

INSERT INTO vets (name, age, date_of_graduation)
VALUES
    ('William Tatcher', 45, '2000-04-23'),
    ('Maisy Smith', 26, '2019-01-17'),
    ('Stephanie Mendez', 64, '1981-05-04'),
    ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES
    ((SELECT id FROM vets WHERE name = 'William Tatcher'), 1),
    ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 1),
    ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 2),
    ((SELECT id FROM vets WHERE name = 'Jack Harkness'), 2);

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2020-05-24'),
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2020-07-22'),
    ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2021-02-02'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-01-05'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-03-08'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-05-14'),
    ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2021-05-04'),
    ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2021-02-24'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-12-21'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2020-08-10'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2021-04-07'),
    ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2019-09-29'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2020-10-03'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2020-11-04'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-01-24'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-05-15'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-02-27'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-08-03'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2020-05-24'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2021-01-11');







