CREATE DATABASE BookShelf;

USE BookShelf;

CREATE TABLE Authors(
Author_ID INT PRIMARY KEY, 
Title VARCHAR(100),
Author VARCHAR(100),
Initial VARCHAR(100) 
);

EXPLAIN Authors;

INSERT INTO Authors (Author_ID, Title, Author, Initial)
VALUES

(1,	"And the Mountains Echoed",	"Khaled Hosseini",	"KH"),
(2,	"Breaking Dawn (The Twilight Saga, Book 4)",	"Stephenie Meyer",	"SM"),
(3,	"Brown Bear, Brown Bear, What Do You See?",	"Bill Martin Jr.",	"BM"),
(4,	"Cabin Fever (Diary of a Wimpy Kid, Book 6)",	"Jeff Kinney",	"JK"),
(5,	"Catching Fire (The Hunger Games)",	"Suzanne Collins",	"SC"),
(6,	"Crazy Rich Asians (Crazy Rich Asians Trilogy)",	"Kevin Kwan",	"KK")
;
SELECT * FROM Authors;

CREATE TABLE BookRatings(
SerialNumber varchar(40) primary key,
Author_ID varchar(40),
UserRating VARCHAR(80),	
Reviews VARCHAR(10),
ReleaseYear VARCHAR(40),
Genre VARCHAR(40)
);

EXPLAIN BookRatings;

INSERT INTO BookRatings (SerialNumber, Author_ID, UserRating, Reviews,ReleaseYear,Genre)
VALUES

(2077, 7, "4.7",	"17350",	"2016",	"Non Fiction"),
(2083, 1, "4.3",	"12159",	"2013",	"Fiction"),
(2078, 8, "4.7",	"18979",	"2018",	"Non Fiction"),
(2084, 2, "4.6",	"9769",	"2009",	"Fiction"),
(2079, 9, "4.7",	"5983",	"2018",	"Non Fiction"),
(2080, 10, "4.6",	"460",	"2010",	"Non Fiction"),
(2085, 3, "4.9",	"14344",	"2019",	"Fiction"),
(2081, 11, "4149",	"2011",	"Non Fiction"),
(2082, 12, "4.6",	"5013",	"2009",	"Non Fiction"),
(2086, 4, "4.8",	"4505",	"2011",	"Fiction"),
(2087, 5, "4.7",	"22614",	"2012",	"Fiction"),
(2088, 6, "4.3",	"6143",	"2018",	"Fiction")
;

EXPLAIN BookRatings;

-- Update a record: Updated UserRating 
UPDATE BookRatings
SET UserRating = 5.0
WHERE SerialNumber = 2083;

SELECT * FROM BookRatings;

-- Delete a record
DELETE FROM Authors
WHERE Author_ID=6;

select * from Authors;

-- Join tables
SELECT Authors.Author_ID , BookRatings.SerialNumber
FROM Authors
INNER JOIN BookRatings
ON Authors.Author_ID , BookRatings.Author_ID;

-- select using comparison operators
SELECT * FROM BookRatings
WHERE ReleaseYear between 2014 and 2018;

-- Run a simple query (one field/column) searching one table.
SELECT Author
FROM Authors
WHERE Initial = 'SC'

-- Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables
SELECT * FROM Authors
INNER JOIN BookRatings
WHERE Authors.Author_ID = BookRatings.Author_ID AND BookRatings.Genre = "Fiction";

-- Retrieve all your data sorted in ascending order on an appropriate field (one table)
SELECT * FROM Authors
ORDER BY Author_ID






