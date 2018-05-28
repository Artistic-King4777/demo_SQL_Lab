DROP TABLE IF EXISTS people;

CREATE TABLE people (
 id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR2(255) NOT NULL DEFAULT '',
 last_name VARCHAR2(255) NOT NULL DEFAULT '',
 mobile VARCHAR2(20),
 birthday DATE DEFAULT NULL,
 home_id SMALLINT DEFAULT NULL,
 PRIMARY KEY (id));

--   ALTER TABLE people
--   ADD FOREIGN KEY (home_id)
--   REFERENCES homes(id);


DROP TABLE IF EXISTS homes;

CREATE TABLE homes (
 id INT NOT NULL AUTO_INCREMENT,
 address VARCHAR2(255) NOT NULL DEFAULT '',
 homenumber VARCHAR2(255) NOT NULL DEFAULT '',
 PRIMARY KEY (id)
);

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
 id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR2(100) NOT NULL UNIQUE,
 runtime SMALLINT NOT NULL,
 genre VARCHAR2(50),
 imdb_score NUMBER(10,1),
 rating VARCHAR(10)
);



INSERT INTO homes (address, homenumber) VALUES ('36 E. Bayberry Rd.Savannah, GA 31404', '565-6895');
INSERT INTO homes (address, homenumber) VALUES ('11 Essex Dr.Farmingdale, NY 11735', '454-4544');
INSERT INTO homes (address, homenumber) VALUES ('920 Arlington Street Clifton, NJ 07011', '985-4515');
INSERT INTO homes (address, homenumber) VALUES ('234 High Street, PA 19159 ', '267-3940');


INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Carbral', 'Sheeri', '230-4233', '1970-02-23', 2);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Sharam', 'Raj', '186-5223', '1980-08-31', 3);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Durand', 'Noelle', '395-6161', '1960-07-06', 1);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Smith', 'Thomas', '395-6181', '1987-07-06', 1);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Smith', 'Jane', '393-6181', '1987-12-06', 3);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Brown', 'Doug', '466-6241', '1954-12-07', 3);