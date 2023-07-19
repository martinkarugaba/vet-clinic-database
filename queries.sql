-- DAY 1 --
-----------

SELECT * FROM animals WHERE name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = TRUE;

SELECT * FROM animals WHERE NOT (name = 'Gabumon');

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

----------
--DAY 2 --
----------

-- No. 1

ALTER TABLE animals ADD COLUMN species VARCHAR(255);

BEGIN;

UPDATE animals SET species = 'unspecified';

SELECT * FROM animals;

ROLLBACK;

SELECT * FROM animals;

--No. 2

BEGIN; 

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

SELECT * FROM animals;

UPDATE animals SET species = 'pokemon' WHERE species IS NULL;

SELECT * FROM animals;

COMMIT; 

SELECT * FROM animals;


--No. 3

BEGIN;

DELETE FROM animals;

SELECT * FROM animals;

ROLLBACK;

SELECT * FROM animals;

--No. 4

BEGIN; 

DELETE FROM animals WHERE date_of_birth > '2022-01-01';

SAVEPOINT delete_animals_born_after_jan_1st_2022; 

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SAVEPOINT delete_animals_born_after_jan_1st_2022; 

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT; 

--No. 5

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT ROUND(AVG(weight_kg), 2) AS average_weight FROM animals;

SELECT neutered, SUM(escape_attempts) AS total_escape_attempts
FROM animals
GROUP BY neutered
ORDER BY total_escape_attempts DESC
LIMIT 1;

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
FROM animals
GROUP BY species;

SELECT species, ROUND(AVG(escape_attempts), 2) AS average_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;


