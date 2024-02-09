CREATE DATABASE pet_adoption;
USE pet_adoption;

CREATE TABLE animals (
id integer primary key auto_increment, 
name varchar(50), 
breed varchar(50), 
color varchar(50), 
gender varchar(50), 
status INTEGER);

CREATE TABLE adoptions (
animal_id integer primary key ,
name varchar(50), 
contact varchar(50), 
date TIMESTAMP);

SHOW TABLES;
SHOW COLUMNS FROM animals;
SHOW COLUMNS FROM adoptions;

INSERT INTO animals (name, breed, color, gender, status) VALUES ('Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (name, breed, color, gender, status) VALUES ('Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (name, breed, color, gender, status) VALUES ('Princess', 'Pomeranian', 'Black', 'Female', 0);
INSERT INTO animals (name, breed, color, gender, status) VALUES ('Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (name, breed, color, gender, status) VALUES ('Princess', 'Poodle', 'Purple', 'Female', 0);
INSERT INTO animals (name, breed, color, gender, status) VALUES ('Spot', 'Dalmation', 'Black and White', 'Male', 0);

SELECT * FROM animals;
SELECT breed FROM animals;
SELECT name FROM animals WHERE gender = 'Female';
SELECT id FROM animals WHERE status = 0;


-- UPDATE AND DELETE 

UPDATE animals SET color = 'Brown' WHERE id = 2;
UPDATE animals SET color = 'Brown' WHERE color = 'Purple';
DELETE FROM animals WHERE id = 4;
SELECT * FROM animals;

UPDATE animals SET status = 1 WHERE id = 6;
INSERT INTO adoptions (animal_id, name, contact, date) VALUES (6, 'Pinocchio', 'realboy@cockroachlabs.com', NOW());
UPDATE animals SET status = 1 WHERE id = 2;
INSERT INTO adoptions (animal_id, name, contact, date) VALUES (2, 'Patalie', 'poodlequeen@cockroachlabs.com', NOW());
UPDATE animals SET status = 1 WHERE id = 5;
INSERT INTO adoptions (animal_id, name, contact, date) VALUES (5, 'Ella', 'ellacrew@cockroachlabs.com', NOW());
SELECT * FROM adoptions;

-- ORDER BY
SELECT * FROM adoptions ORDER BY date ASC;

-- WHERE
SELECT * FROM animals WHERE status = 1;

-- ALTER TABLE
ALTER TABLE animals ADD COLUMN species VARCHAR(50);
SHOW COLUMNS FROM animals;

SET sql_safe_updates = FALSE;
UPDATE animals SET species = 'Dog';
SELECT * FROM animals;

INSERT INTO animals (name, species, breed, color, gender, status) VALUES ('Meowmix', 'Cat', 'Munchkin', 'Yellow', 'Female', 0);
INSERT INTO animals (name, species, breed, color, gender, status) VALUES ('Ash', 'Cat', 'Persian', 'Gray', 'Female', 0);
INSERT INTO animals (name, species, breed, color, gender, status) VALUES ('Tiger', 'Cat', 'Bengal', 'Brown', 'Male', 0);
SELECT * FROM animals;

CREATE TABLE shelters (
id INTEGER, 
name VARCHAR(50), 
location VARCHAR(50)
);

INSERT INTO shelters (id, name, location) VALUES (1, 'Animals 4 Homes', 'Red City');
INSERT INTO shelters (id, name, location) VALUES (2, 'Adopt A Buddy', 'Green Town');
INSERT INTO shelters (id, name, location) VALUES (3, 'Fluffy Animals', 'Blue Hills');

ALTER TABLE animals ADD COLUMN shelter INTEGER;
UPDATE animals SET shelter = 1;

SELECT * FROM shelters;

INSERT INTO animals (name, shelter, species, breed, color, gender, status) VALUES ('Snoops', 2, 'Dog', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (name, shelter, species, breed, color, gender, status) VALUES ('Salt', 2, 'Cat', 'Turkish Angora', 'White', 'Female', 0);
INSERT INTO animals (name, shelter, species, breed, color, gender, status) VALUES ('Fuzz', 3, 'Dog', 'Papillon', 'Gray', 'Male', 0);
SELECT * FROM animals;


-- INDEX

CREATE INDEX animal_shelter ON animals (shelter);

-- JOIN
SELECT * FROM animals JOIN shelters ON animals.shelter = shelters.id;
SELECT * FROM adoptions JOIN animals ON adoptions.animal_id = animals.id WHERE animals.shelter = 1;

-- AND
SELECT * FROM animals WHERE shelter = 1 AND color = 'Brown';

-- IN
SELECT * FROM animals WHERE shelter IN (2,3);

-- LIKE
SELECT * FROM animals WHERE name LIKE '%uzz';

-- NOT
SELECT * FROM animals WHERE name NOT LIKE '%uzz';

-- OR
SELECT * FROM animals WHERE breed = 'Beagle' OR gender = 'Male';

-- ALL
SELECT * FROM animals WHERE id = ALL(SELECT id FROM animals WHERE shelter = 1);

Select name from adoptions 
where animal_id = ALL (select id from animals where adoptions.date < current_date());

-- ANY
SELECT * FROM animals WHERE id = ANY(SELECT id FROM animals WHERE shelter = 1);

Select name from adoptions 
where animal_id = ANY (select id from animals where adoptions.animal_id=animals.id and adoptions.date < NOW());

-- DISTINCT
SELECT DISTINCT name FROM animals;
SELECT DISTINCT * FROM animals;

-- COUNT
SELECT COUNT(DISTINCT shelter) FROM animals ;

-- HAVING
SELECT COUNT(shelter) FROM animals GROUP BY shelter HAVING COUNT(shelter)>1;

insert into adoptions (name,contact,date,animal_id) values ('Mitushi','mitu@gmail.com',NOW(),1);


-- EXISTS
Select name from adoptions 
where exists (select id from animals where adoptions.animal_id=animals.id and adoptions.date < current_date() );


select animal_id from adoptions where date < current_date();

