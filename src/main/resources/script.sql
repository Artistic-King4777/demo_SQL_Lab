
-- SELECTING ALL ROWS FROM TABLE:

-- SELECT * FROM people;
    --This command selects all the people and shows them to me
    -- also a "sanity checker" like the git status in the gitBash
    -- so I get back ALL the rows and columns not jus the first one

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- UPDATING ROWS:


-- UPDATE people SET first_name = 'Tony' WHERE id = 1;
     -- This command updates people by changing (resetting) Tony's id to 1



-- UPDATE people SET mobile = '152-9854' WHERE last_name = 'Smith';
     -- This command updates the people table // it resets "EVERYONE" with the last name Smith
     --     to have a new phone number ( will change both Thomas Smith and Jane Smith ) - it did



-- UPDATE people SET birthday = '1955-01-25'
-- WHERE last_name = 'Smith'
-- AND id = 4;
      -- its doing an update -- again -- for a person with last name Smith AND has an id of 4
      --    to change the birthday so only Thomas Smith this time
      --    but its doing it on multiple lines this time




-- UPDATE people SET mobile = '333-3333', last_name = 'Johnson'
-- WHERE first_name = 'Noelle' OR first_name = 'Raj';
     -- so its updating people table to change the columns MOBILE and LASTNAME
     -- and only for the "people" with the FIRSTNAME noelle or raj



-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- BASIC FUNCTIONS:

-- SELECT * FROM people;
   -- same function as b4 // it pulls up the ENTIRE people table for us to see



-- SELECT COUNT(homenumber) FROM homes;
    -- it will select homenumber column from the homes table and .....count it?
    --     i got back 4 -- because theres 4 homePhoneNumbers inside the homes table so COUNT counts
    --     all of them



-- SELECT homenumber FROM homes WHERE id = 1;
    -- will select the home phone number with id 1 in the homes table and display it



-- SELECT COUNT(*) FROM homes;
    -- counts all the rows in homes table



-- SELECT COUNT(DISTINCT last_name) FROM people;
    -- counts how many DIFFERENT AND UNIQUE lastNames are in the people Table (not how many in table total)



-- SELECT  SUM(id), AVG(id) FROM people;
    -- the id's added up and then divided by how any there were? (like 1+2+3+4+5+6= (SUM)21 / 7 = (AVG)3);
    -- SUM(id) = 21 ,, AVG(id) = 3  -- in the people table
    -- top of column says "SUM(id)" && "AVG(id)"



-- SELECT SUM(id) AS sum, AVG(id) AS avg FROM people;
    -- sum of id and avg of id but this time the top of the column says
    -- top of column says "SUM" && "AVG" soo the column title changed
    -- so AS "text" will make it change the column names to whatever you put after AS



-- SELECT MIN(birthday) FROM people;
    -- returned: 1954-12-07 /// tht is the lowest birthday in the table so far so
    --    it returns the minimum date in the birthday column


-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- STRINGS:


-- SELECT UPPER (first_name), LOWER(last_name) FROM people;
    -- It selects all the first name and displays them ... however
    --    all the FirstNames are UPPERCASE and LastNames are lowercase in their columns



-- SELECT REPLACE(last_name, 'a', '1') FROM people;
    -- so everyone in the people table under the last_name column
    --    any letter A in their name will be replaced with the number 1 instead
    --    ( not permanently tho only for the display at the time since its not resetting the value)
    --     example ( last_name : Carbral is now C1rbr1l)



-- SELECT last_name FROM people;
    -- selects the last_name column from people table and displays them



-- INSERT INTO people (first_name, last_name, mobile)
-- VALUES ('Otto', 'Von Count', '656-6548');
    -- Inserting a new person into people table
    --   under the firstName lastName andmobile column
    --   otto will go to first/ vonCount to last and the number to mobile
    --   so same order as the columns in parenthesis
    --   id was automatically incremented and b-day / home id are both null


-- SELECT CONCAT(first_name, last_name) FROM people
-- WHERE last_name = 'Smith';
    -- Concatenates the first and last name column where lastName = smith
    --   so both Thomas Smith and Jane Smith
    --   not permanent



-- SELECT CONCAT(first_name, ' ', last_name)
-- FROM people
-- WHERE last_name = 'Smith';
    -- same as the last one but with an added space as well as
    --   they did it on multiple lines
    --   not permanent



-- SELECT CONCAT(first_name, ' ', last_name)
-- FROM people
-- WHERE last_name = 'Smith';
    -- Same as last time though the added mobile to it and somehow there is space between
    --   the first last and mobile E.E not sure what WS means but i think it means
    --   whitespace?? and putting at the beginning will make it do it between each column value



-- SELECT homenumber, LEFT(homenumber, 3), RIGHT(homenumber, 2) FROM homes;
    -- it selects HOMENUMBER /// then selects first 3 digits from the left to the right side
    --   and THEN selects the last 2 digits starting from the left going to the right
    --   reminds me of when they ask for last 4 digits of credit card or ssn



-- SELECT LENGTH(address), CHAR_LENGTH(address) FROM homes;
    -- selects the address from homes table
    --   displays the string length of each address and displays as one column
    --   displays the character length of each address and displays as a second column

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- COMPARE:


-- SELECT first_name, last_name, YEAR(birthday) FROM people WHERE birthday >= '1970-07-06' AND birthday<='1987-07-06';
    -- so we will be displaying first and last names,
    --   and display the year from each birthday
    --   where birthday is not lower then july in the 1970's BUT birthday cannot go higher
    --   then june 1987 (bday >= july 6, 1970 && bday <= june 7, 1987)
    --   returned : Raj Johnson 1980 -- he is the only one who fit the criteria



-- SELECT first_name, birthday FROM people WHERE first_name='Thomas' OR first_name='Raj' OR first_name='Sheeri';
    -- selects the first name and birthday columns of the people table
    --   where (aka only where) the first name values are Thomaas, Raj or Sheen
    --   there is no sheen so no one is displayed for tht value



-- SELECT first_name, birthday FROM people WHERE first_name IN ('Noelle', 'Thomas', 'Raj');
    -- selects firstName and birthday columns from the people table
    --   where first name "IN" ("Noelle" , "Thomas", "Raj")
    --   so, teh birthdays and first names of only those values

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- WILD CARDS:


-- SELECT first_name FROM people WHERE RIGHT(first_name,1)='e';
    -- select first name column from people table where
    --   on the right of first name there is 1 letter e?



-- SELECT first_name FROM people WHERE first_name LIKE '%j';
    -- so selecting the first name column from the people table
    --   where theres a firstName ends with lowercase j !!
    --   so the LIKE and % are case sensitive



-- SELECT first_name FROM people WHERE first_name LIKE '%o%';
    -- select first name columns from the people table
    --   where any first name has the value lowercase: ' o ' in any position
    --   case sensitive so not capital letters count


-- SELECT first_name FROM people WHERE first_name NOT LIKE '%o%';
    -- select first name columns from the people table
    --   where first name does NOT have a lowercase o in their value
    --   not sure about this



-- SELECT COUNT(*) FROM people;
    -- counts how many ROWS of "people" are currently in the people table



-- SELECT last_name, COUNT(*) FROM people GROUP BY last_name;
    -- selects last name column from the people table and counts how many have the same
    --   they also grouped by last name so smith and johnson only appear once each yet their
    --   count says 2


-- SELECT last_name, GROUP_CONCAT(mobile) FROM people GROUP BY last_name;
    -- same grouping of last names again but this time, it concatenates the mobile numbers\
    --   smith and johnson have the same numbers so they have 2 numbers by their name



-- SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people GROUP BY last_name;
    -- grouping last names and concat numbers again except this time it added an "and"
    --   between each number where there were two



-- SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people GROUP BY last_name  HAVING COUNT(*)>1;
    -- selects the last name column and only displays the names and numbers that
    --   displays the phone numbers for people that have the same lastName more then once
    --   and separates multiple mobiles with the word "and"



-- SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people WHERE last_name != 'Cabral' GROUP BY last_name  HAVING COUNT(*)>1;
    -- does the same thing as the one before it BUT it adds a second condition tht says
    --   that we DONT want the last name Cabral for sure
    --   so if there were multiple cabral's they would not be displayed

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- SORTING:


-- SELECT first_name, birthday FROM people ORDER BY birthday;
    -- selects the firstName and bday columns and displays them in order by
    --   bday naturally by oldest to youngest



-- SELECT first_name, birthday FROM people ORDER BY birthday DESC;
    -- same as the one right before this, however its ordered by date in DESCENDING
    --   order this time so youngest on top and oldest on bottom



-- SELECT first_name, last_name FROM people ORDER BY last_name, first_name;
    -- selects the firstName and lastName columns and displays them in a natural
    --   order (aka: a-z) for both of them



-- SELECT first_name, birthday FROM people ORDER BY birthday DESC LIMIT 3;
    -- selects firstName and bday from the people table and displays them by date,
    --   in descending order youngest at top snd oldest at the bottom but now there
    --   is an additional condition theres a limit of only THREE bdays to be displayed
    --   so only the first 3 values from the DESCENDING order list are allowed to be
    --   displayed in the table



-- SELECT first_name, MONTHNAME(birthday) as mon, birthday FROM people ORDER BY MONTH(birthday);
    -- selects firstName and the birthday columns from the people table
    --   the birthdays are split up first is the monthNames as a new column named MON between
    --   the firstName and Birthday columns and THEN its ordered by "month" in birthday column
    --   so january to december



-- SELECT last_name, COUNT(*) FROM  people GROUP BY last_name;
    -- selects lastName column from the people table and groups them by last name
    --   multiple of the same last name is jus a single name row and "counted"
    --   next to the name with a count higher then 1 showing theres more then one person with
    --   the last name Smith or Johnson



-- SELECT last_name, COUNT(*) FROM  people GROUP BY last_name ORDER BY NULL;
    -- same as the one b4 this but this time there's no set order ???



-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- INSERTING AND REPLACING RECORDS


-- INSERT INTO people (first_name, last_name, birthday, home_id)
-- VALUES ('John', 'Smith', '1998-04-07', 4),
-- ('Maya', 'Wasserman' , NULL, 4),
-- ('Paul', 'Thompson', '1996-05-27', 1);
     -- inserts new values into the people table
     --   inserts specifically new values into the firstName/ lastName/bday and homeID
     --   columns // the values are on the other lines in the same order as the columns stated
     --     Von Counts bday and homeID are still null
     --     and the new people all have null values for mobile
     --     while only Maya Wasserman has a null value for bDay

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- DELETING

-- DELETE FROM people WHERE first_name='Maya';
    -- deletes and removes the row about Maya



-- SELECT * FROM PEOPLE
    -- SSC (SQL Sanity Checker) shows and confirms that Maya has now been removed
    -- similar to the GBSC (GitBash Sanity Checker) to let us know what we

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- JOIN:


-- INSERT INTO people (first_name, last_name, birthday)
-- VALUES ('Eli', 'Kramer', '1984-01-15');
    -- inserts new values into people table under the firstName// lastName and Bday columns




-- SELECT * FROM people;
    -- do our lovely SSC again and we can tell tht Eli Kramer has been added with a bday but
    --   has a null value for both homeID and mobile



-- SELECT * FROM homes;
    -- displays every row and column in the homes table



-- SELECT p.first_name, h.address
-- FROM people p
-- INNER JOIN homes h on (p.home_id = h.id);
    -- selects firstName from people table and address from homes table and joins them based
    --   on their home id's so people with the same homeID will have the same address
    --   showing tht they A either live together or B there's an error
    --   and displays the table on screen joined together (firstName then Address)
    --   does not do so permanently



-- SELECT first_name, last_name
-- FROM people p
-- INNER JOIN homes h on (p.home_id = h.id)
-- WHERE p.HOME_ID = 1;
    -- selects and displays firstName and lastName from the people table only
    --   where their homeID's equal one (meaning only the people with the same homeID
    --   whos' homeID's are the value 1 in both the people and homes table)



-- SELECT p.*, h.address, h.homenumber
-- FROM people p
-- INNER JOIN homes h  on (p.home_id = h.id)
-- WHERE p.first_name  LIKE '%e%';
    -- Select all of the people table and the address and homenumber from the homes table
    --   and get the matching values for home with the HomeID from people and homes table
    --   where firstName has the letter LOWERCASE e in any position


-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ END OF PART ONE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--  DEVISING A REPORT:

-- Show all the people in your address table, only if you know their birthday.
    -- SELECT * FROM people WHERE birthday IS NOT NULL;



-- Show their name, address and birthday ordered by birthday month, so January birthdays are first.
--- added the MONTHNAME(birthday) as mon to show they are ordered by month
    -- SELECT p.first_name, p.last_name, h.address, MONTHNAME(birthday) as mon, p.birthday
    -- FROM people p
    -- INNER JOIN homes h on (p.home_id = h.id)
    -- ORDER BY  MONTH(birthday);

           -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--  DEVISING A REPORT TWO:

-- Output all information for all people and their home information
--- This outputs all of the people table and their matching home information
    -- SELECT p.first_name, p.last_name, p.mobile, p.birthday, p.home_id, h.id, h.address, h.homenumber
    --
    -- FROM people p
    -- INNER JOIN homes h on (p.home_id = h.id);

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- MINI MOVIE DATABASE:
-- Once you have figured out the correct queries for each step, save a copy in a file
--   called src/main/resources/script.sql. This will be how you submit this assignment.
--   If at any time you need to reset the database, you can restart your Spring Boot
--   server.
--
-- Add the following "movies" to the movies table using an insert statement: :

--     Title         | Runtime	|    Genre     | IMDB Score |	Rating
-- Howard the Duck   |   110   |   Sci-Fi     |     4.6    |    PG
-- Lavalantula       |   83    |   Horror     |     4.7    |   TV-14
-- Starship Troopers |   129   |   Sci-Fi     |     7.2    |   PG-13
-- Waltz With Bashir |   90    | Documentary  |     8.0    |    R
-- Spaceballs        |   96    |   Comedy     |     7.1    |    PG
-- Monsters Inc.     |   92    |  Animation   |     8.1    |    G

-- First I had to alter the tables id column to auto increment and make it the primary key
          -- ALTER TABLE movies MODIFY id int NOT NULL AUTO_INCREMENT;
          -- ALTER TABLE movies ADD PRIMARY KEY (id);

-- ps if you want to drop a key or add multiple keys or drop and add multiple columns as
--   keys you can use this method and alter to your pleasure
          -- ALTER TABLE TABLE_NAME DROP INDEX `PRIMARY`, ADD PRIMARY KEY (COLUMN1, COLUMN2,..);

-- THIS IS HOW I ADDED IT
    --    INSERT INTO movies (title, runtime, genre, imdb_score, rating)
    --    VALUES --('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
    --    ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
    --    ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
    --    ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
    --    ('Spaceballs', '96', 'Comedy', 7.1, 'PG'),
    --    ('Monsters Inc.', 92, 'Animation', 8.1, 'G');



--  Add a few more movies of your choosing.
     --  INSERT INTO movies (title, runtime, genre, imdb_score, rating)
     --  VALUES ('Spirited Away', 135, 'Family/Anime', 8.6, 'PG'),
     --  ('My Neighbor Totoro', 86, 'Fantasy/Anime', 8.2, 'G'),
     --  ('KiKis Delivery Service', 113, 'Drama/Anime', 7.9, 'G'),
     --  ('Inuyasha the Movie 2: The Castle Beyond the Looking Glass', 99, 'Action/Anime', 7.6, 'Not Rated'),
     --  ('Hana Yori Dango/Boys Over Flowers', 162, 'Korean Romance/Drama', 8.2, 'Not Rated');

--  Create a query to find all movies in the Sci-Fi genre.
     -- SELECT * FROM movies WHERE genre = 'Sci-Fi';


--  Create a query to find all films that scored at least a 6.5 on IMDB
    -- SELECT * FROM movies WHERE imdb_score >= 6.5;


--  For parents who have young kids, but who don't want to sit through long children's
--     movies, create a query to find all of the movies rated G or PG that are less than
--     100 minutes long.
          -- SELECT * FROM movies WHERE rating = 'G' OR rating = 'PG' AND runtime < 100;
          --   still has kiki's delivery service in table tho even tho runtime is 113


--  Create a query to show the average runtimes of movies scoring below a 7.5 on imdb,
--     grouped by their respective genres.
          --  SELECT SUM(runtime) as run_sum, AVG(runtime) as run_avg FROM movies
          --  WHERE imdb_score < 7.5
          --  GROUP BY genre;


--  There's been a data entry mistake; Starship Troopers is actually rated R, not PG-13.
--     Create a query that finds the movie by its title and changes its rating to R.
          -- UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';



--  Show the ID number and rating of all of the Horror and Documentary movies in the
--     database. Do this in only one query.
         -- SELECT id, rating FROM movies WHERE genre = 'Horror' OR genre = 'Documentary';


--  This time let's find the average, maximum, and minimum IMDB score for movies
--     of each rating.
          --  SELECT SUM(imdb_score) AS sum_imdb, AVG(imdb_score) AS avg_imdb,
          --  MIN(imdb_score) AS min_imdb FROM movies GROUP BY rating;



--  That last query isn't very informative for ratings that only have 1 entry. Use a
--     HAVING COUNT(*) > 1 clause to only show ratings with multiple movies showing.
           -- SELECT SUM(imdb_score) AS sum_imdb, AVG(imdb_score) AS avg_imdb,
           -- MIN(imdb_score) AS min_imdb FROM movies GROUP BY rating HAVING COUNT(*) > 1;

--  Let's make our movie list more child-friendly. Delete all entries that have a rating
--     of R. Remember to record your query in script.sql.
           -- waltz with bashir and starship troopers should be deleted (id 3 & 4)
           --  DELETE FROM movies WHERE rating = 'R';
           --  SELECT * FROM movies; (to show it was done)

-- https://stackoverflow.com/questions/2214141/auto-increment-after-delete-in-mysql?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
-- https://www.google.com/search?q=How+do+you+fix+the+id+in+sql+qhen+you+remove+something&oq=How+do+you+fix+the+id+in+sql+qhen+you+remove+something&aqs=chrome..69i57.25126j0j7&sourceid=chrome&ie=UTF-8
--     Reference to try and fix the odd ID problem
--     Maybe could also refactor it