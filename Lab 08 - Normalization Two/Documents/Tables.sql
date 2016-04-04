-- Drops Existing tables to prevent possible overlap --

DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS singleActors;
DROP TABLE IF EXISTS marriedActors;
DROP TABLE IF EXISTS singleDirectors;
DROP TABLE IF EXISTS marriedDirectors;

-- People --
CREATE TABLE people (
	pid		CHAR(12) NOT NULL,
	fistName	TEXT NOT NULL,
	lastName	TEXT NOT NULL,
	birthday	DATE NOT NULL,
	heightIN	INTEGER NOT NULL,
	weightLBS	INTEGER NOT NULL,
	favColor	TEXT NOT NULL,
	address		TEXT NOT NULL,
	hairColor	TEXT NOT NULL,
	eyeColor	TEXT NOT NULL,
	primary key(pid)	
);

SELECT * FROM people;

-- Single Actors --
CREATE TABLE singleActors (
	pid		CHAR(12) NOT NULL REFERENCES people(pid),
	AGAD		DATE NOT NULL,
	primary key(pid)
);

SELECT * FROM singleActors;

-- Married Actors --
CREATE TABLE marriedActors (
	pid		CHAR(12) NOT NULL REFERENCES people(pid),
	spouseName	TEXT NOT NULL,
	AGAD		DATE NOT NUll,
	primary key(pid)
);

SELECT * FROM marriedActors;

-- Single Directors --
CREATE TABLE singleDirectors (
	pid		CHAR(12) NOT NULL REFERENCES people(pid),
	filmSchool	TEXT NOT NULL,
	DGAD		DATE NOT NULL,
	favLenMaker	TEXT NOT NULL,
	primary key(pid)	
);

SELECT * FROM singleDirectors;

-- Married Directors --
CREATE TABLE marriedDirectors (
	pid		CHAR(12) NOT NULL REFERENCES people(pid),
	spouseName	TEXT NOT NULL,
	filmSchool	TEXT NOT NULL,
	DGAD		DATE NOT NULL,
	favLenMaker	TEXT NOT NULL,
	primary key(pid)
	
);

SELECT * FROM marriedDirectors;

-- Movie Data --
CREATE TABLE movieData (
	mpaaNum		INTEGER NOT NULL,
	name		TEXT NOT NULL,
	releaseDate	DATE NOT NULL,
	dbosUSD		INTEGER NOT NULL,
	fbosUSD		INTEGER NOT NULL,
	dvdbluSales	INTEGER NOT NULL,
	primary key(mpaaNum)
);

SELECT * FROM movieData;

