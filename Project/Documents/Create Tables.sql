-- Drops all tables in preparation for database creation. --
/*DROP TABLE IF EXISTS vlkaFenryka;
DROP TABLE IF EXISTS successorChapter;
DROP TABLE IF EXISTS geneseedBank;
DROP TABLE IF EXISTS geneseedHistory;
DROP TABLE IF EXISTS dreadnought;
DROP TABLE IF EXISTS activeDreadnought;
DROP TABLE IF EXISTS greatCompany;
DROP TABLE IF EXISTS astartes;
DROP TABLE IF EXISTS rank;
DROP TABLE IF EXISTS specialization;
DROP TABLE IF EXISTS gcArmaments;
DROP TABLE IF EXISTS issuedArmaments;
DROP TABLE IF EXISTS armaments;
DROP TABLE IF EXISTS activeMods;
DROP TABLE IF EXISTS vehicle;
DROP TABLE IF EXISTS weapons;
DROP TABLE IF EXISTS armour;
DROP TABLE IF EXISTS mods;*/

-- Create Main Vlka Fenryka Table --
DROP TABLE IF EXISTS vlkaFenryka;

CREATE TABLE vlkaFenryka (
	chid		SERIAL UNIQUE NOT NULL,
	primarchName	TEXT NOT NULL,
	chapterName	TEXT NOT NULL,
	founding	INT NOT NULL,
	homeWorld	TEXT NOT NULL,
	battleColors	TEXT NOT NULL,
	primary key(chid)
);

-- Insert into Vlka Fenryka --
INSERT INTO vlkaFenryka(primarchName, chapterName, founding, homeWorld, battleColors)
	VALUES('Leman Russ', 'Vlka Fenryka', 1, 'Fenris', 'Blue-Grey');

SELECT * FROM vlkaFenryka;

--------------------------------------------------------------------

-- Create Successor Chapter Table --
DROP TABLE IF EXISTS successorChapter;

CREATE TABLE successorChapter (
	schid		SERIAL UNIQUE NOT NULL,
	pchid		INT NOT NULL REFERENCES vlkaFenryka(chid),
	sChapterName	TEXT NOT NULL,
	founding	INT NOT NULL,
	primary key(schid)
);

-- Insert into Successor Chapter --
INSERT INTO successorChapter(pchid, sChapterName, founding)
	VALUES(1, 'Wolf Brothers', 2);

SELECT * FROM successorChapter;

--------------------------------------------------------------------

-- Create Gene-Seed Bank Table --
DROP TABLE IF EXISTS geneseedBank;

CREATE TABLE geneseedBank (
	gsid		SERIAL UNIQUE NOT NULL,
	pchid		INT NOT NULL REFERENCES vlkaFenryka(chid),
	progenitorFname	TEXT NOT NULL,
	progenitorLname	TEXT NOT NULL,
	primary key(gsid)
);

-- Insert into Gene-Seed Bank --
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Itard', 'Aenar');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Raddin', 'Hulgar');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Bjadmund', 'Brandr');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Valund', 'Brandr');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Kunthjol', 'Haaki');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Fjolfrin', 'Snadmu');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Hodlin', 'Hidar');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Sifkni', 'Dagljot');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Jolgard', 'Loronr');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Fjolfr', 'Aenar');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Fjolfr', 'Lasska');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Gærhialm', 'Armodsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Arnthor', 'Ingibjorgsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Hrut', 'Vegeirsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Vestein', 'Thorvidsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Thorkel', 'Hallisson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Thormothr', 'Vebjornsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Amundi', 'Authgrimsson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Hadd', 'Buisson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Thormothr', 'Beigarth');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Gislrr', 'Svefgar');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Ortinal', 'Vidund');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Vonmir', 'Gorurd');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Hamlsvar', 'Colossus');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Kunaug', 'Argarkesson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Lorer', 'Tarbeldson');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Yngvic', 'Asahriksen');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Algoleif', 'Engmerssen');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Ormhelm', 'Argardessen');
INSERT INTO geneseedBank(pchid, progenitorFname, progenitorLname)
	VALUES(1, 'Ingmrbald', 'Greycloak');

SELECT * FROM geneseedBank;

--------------------------------------------------------------------

-- Create Rank Tables --
DROP TABLE IF EXISTS rank;

CREATE TABLE rank (
	rid		SERIAL UNIQUE NOT NULL,
	rankName	TEXT NOT NULL,
	primary key(rid)
);

-- Insert into Rank --
INSERT INTO rank(rankName)
	VALUES('Great Wolf');
INSERT INTO rank(rankName)
	VALUES('Wolf Lord');
INSERT INTO rank(rankName)
	VALUES('Blood Claw');
INSERT INTO rank(rankName)
	VALUES('Grey Hunter');
INSERT INTO rank(rankName)
	VALUES('Long Fang');
INSERT INTO rank(rankName)
	VALUES('Lone Wolf');
INSERT INTO rank(rankName)
	VALUES('Wolf Guard');
INSERT INTO rank(rankName)
	VALUES('Wolf Scout');
INSERT INTO rank(rankName)
	VALUES('Rune Priest');
INSERT INTO rank(rankName)
	VALUES('Wolf Priest');
INSERT INTO rank(rankName)
	VALUES('High Wolf Priest');
INSERT INTO rank(rankName)
	VALUES('High Rune Priest');
INSERT INTO rank(rankName)
	VALUES('Iron Priest');

SELECT * FROM rank;

--------------------------------------------------------------------

-- Create Specialization Table --
DROP TABLE IF EXISTS specialization;

CREATE TABLE specialization (
	sid		SERIAL UNIQUE NOT NULL,
	specialization	TEXT NOT NULL,
	primary key(sid)
);

-- Insert into Specialization --
INSERT INTO specialization(specialization)
	VALUES('Tactical');
INSERT INTO specialization(specialization)
	VALUES('Assault');
INSERT INTO specialization(specialization)
	VALUES('Terminator');
INSERT INTO specialization(specialization)
	VALUES('Seige Warfare');
INSERT INTO specialization(specialization)
	VALUES('Demolisher');
INSERT INTO specialization(specialization)
	VALUES('Calvary');

SELECT * FROM specialization;

--------------------------------------------------------------------

-- Create Great Company Table --
DROP TABLE IF EXISTS greatCompany;

CREATE TABLE greatCompany (
	gcid		SERIAL UNIQUE NOT NULL,
	pchid		INT NOT NULL REFERENCES vlkaFenryka(chid),
	companyName	TEXT NOT NULL,
	wolfLordName	TEXT NOT NULL,
	badgeName	TEXT NOT NULL,
	primary key(gcid)
);

-- Insert into Great Company --
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Company of the Great Wolf', 'Logan Grimnar', 'Wolf that Stalks the Stars');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Bloodmaws', 'Bran Redmaw', 'Bloodied Hunter');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Seawolves', 'Engir Krakendoom', 'Sea Wolf');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Sons of Morkai', 'Erik Morkai', 'Morkai');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Red Moons', 'Gunnar Red Moon', 'Wolf of the Red Moon');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Deathwolves', 'Harald Deathwolf', 'Great Devourer');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Stormwolves', 'Bjorn Stormwolf', 'Thunderwolf');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Ironwolves', 'Egil Iron Wolf', 'Iron Wolf');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Drakeslayers', 'Krom Dragongaze', 'Sun Wolf');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Blackmanes', 'Ragnar Blackmane', 'Blackmane');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Firehowlers', 'Sven Bloodhowl', 'Fire Breather');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Grimbloods', 'Kjarl Grimblood', 'Fire Wolf');
INSERT INTO greatCompany(pchid, companyName, wolfLordName, badgeName)
	VALUES(1, 'Wulfen', 'Bulveye, Axeman of Russ', 'Obsidian Stone Slab');

SELECT * FROM greatCompany;

--------------------------------------------------------------------

-- Create the Astartes Table --
DROP TABLE IF EXISTS astartes;

CREATE TABLE astartes (
	aid		SERIAL UNIQUE NOT NULL,
	rid		INT NOT NULL REFERENCES rank(rid),
	sid		INT NOT NULL REFERENCES specialization(sid),
	gcid		INT NOT NULL REFERENCES greatCompany(gcid),
	fName		TEXT NOT NULL,
	lName		TEXT NOT NULL,
	serviceStart	TEXT NOT NULL,
	primary key(aid)
);

-- Insert into Astartes --
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(1, 2, 1, 'Logan', 'Grimnar', '766 781.M35');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 1, 2, 'Bran', 'Redmaw', '099 158.M33');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 2, 3, 'Engir', 'Krakendoom', '325 969.M40');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 3, 4, 'Erik', 'Morkai', '707 242.M35');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 4, 5, 'Gunnar', 'Red Moon', '234 195.M38');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 5, 6, 'Harald', 'Deathwolf', '481 760.M39');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 6, 7, 'Bjorn', 'Stormwolf', '727 484.M32');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 1, 8, 'Egil', 'Iron Wolf', '803 029.M40');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 2, 9, 'Krom', 'Dragongaze', '758 253.M35');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 2, 10, 'Ragnar', 'Blackmane', '838 401.M37');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 3, 11, 'Sven', 'Bloodhowl', '822 786.M35');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 4, 12, 'Kjarl', 'Grimblood', '602 962.M39');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(2, 5, 13, 'Bulveye', 'Axeman of Russ', '313 169.M30');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(7, 2, 1, 'Bjorn', 'Fell-Handed', '359 417.M31');
INSERT INTO astartes(rid, sid, gcid, fName, lName, serviceStart)
	VALUES(7, 2, 1, 'Kverlaf', 'Murderfang', '273 678.M34');

SELECT * FROM astartes;

--------------------------------------------------------------------

-- Create Gene-Seed History Table --
DROP TABLE IF EXISTS geneseedHistory;

CREATE TABLE geneseedHistory (
	gsid		INT NOT NULL REFERENCES geneseedBank(gsid),
	aid		INT NOT NULL REFERENCES astartes(aid),
	dateOfImplant	TEXT NOT NULL,
	primary key(gsid, aid)
);

-- Insert into Gene-Seed History --
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(30, 1, '643 830.M33');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(1, 2, '318 077.M32');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(2, 3, '911 219.M39');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(3, 4, '541 971.M34');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(4, 5, '012 578.M37');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(5, 6, '569 896.M38');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(6, 7, '616 102.M31');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(7, 8, '161 999.M36');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(8, 9, '210 645.M34');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(9, 10, '474 651.M36');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(10, 11, '480 604.M34');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(11, 12, '452 065.M38');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(12, 13, '672 532.M29');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(13, 14, '519 441.M30');
INSERT INTO geneseedHistory(gsid, aid, dateOfImplant)
	VALUES(14, 15, '966 203.M33');

SELECT * FROM geneseedHistory;

--------------------------------------------------------------------

-- Create Dreadnought Table --
DROP TABLE IF EXISTS dreadnought;

CREATE TABLE dreadnought (
	did		SERIAL UNIQUE NOT NULL,
	dreadType	TEXT NOT NULL,
	primary key(did)
);

-- Insert into Dreadnought --
INSERT INTO dreadnought(dreadType)
	VALUES('Venerable');
INSERT INTO dreadnought(dreadType)
	VALUES('Siege');
INSERT INTO dreadnought(dreadType)
	VALUES('Ironclad');
INSERT INTO dreadnought(dreadType)
	VALUES('Hellfire');
INSERT INTO dreadnought(dreadType)
	VALUES('Contemptor Pattern');
INSERT INTO dreadnought(dreadType)
	VALUES('Deredeo');
INSERT INTO dreadnought(dreadType)
	VALUES('Librarian');
INSERT INTO dreadnought(dreadType)
	VALUES('Chaplain');
INSERT INTO dreadnought(dreadType)
	VALUES('Leviathan');

SELECT * FROM dreadnought;

--------------------------------------------------------------------

-- Create Active Dreadnought Table --
DROP TABLE IF EXISTS activeDreadnought;

CREATE TABLE activeDreadnought (
	did		INT UNIQUE NOT NULL REFERENCES dreadnought(did),
	aid		INT UNIQUE NOT NULL REFERENCES astartes(aid),
	internmentDate	TEXT NOT NULL,
	primary key(did, aid)
);

-- Insert into Active Dreadnought --
INSERT INTO activeDreadnought(did, aid, internmentDate)
	VALUES(1, 14, '130 620.M33');
INSERT INTO activeDreadnought(did, aid, internmentDate)
	VALUES(3, 15, '839 269.M35');

SELECT * FROM activeDreadnought;

--------------------------------------------------------------------

-- Create Armaments Table --
DROP TABLE IF EXISTS armaments;

CREATE TABLE armaments (
	eid		SERIAL UNIQUE NOT NULL,
	type		TEXT NOT NULL,
	mrkDesignation	Char(12) NOT NULL,
	eName		TEXT NOT NULL,
	primary key(eid)
);

-- Insert into Armaments --
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'VB', 'Godwyn Pattern Bolter');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'IV', 'Ultra Pattern Bolter');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'I', 'Lighting Claws');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'I', 'Force Sword');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'I', 'Doom Hammer');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Weapon', 'Xf', 'Krakentooth Pattern Chainsword');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'I', 'Thunder Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'II', 'Crusade Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'III', 'Iron Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'IV', 'Maximus Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'V', 'Heresy Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'VI', 'Corcus Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'VII', 'Aquila Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'VIII', 'Errant Pattern Power Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'I', 'Cataphractii Pattern Tactical Dreadnought Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'II', 'Indomitus Pattern Tactical Dreadnought Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'III', 'Gorgon Pattern Tactical Dreadnought Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'IV', 'Tartaros Pattern Tactical Dreadnought Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Armour', 'V', 'Aegis Terminator Armour');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'Ib', 'Mars Patter Rhino Transport');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'Ib', 'Deimos Pattern Rhino');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'X', 'Kronos Pattern Predaor');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'Vb', 'Kaurava Pattern Whirlwind');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'IX', 'Armageddon Pattern Landraider');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'X', 'Skylander Pattern Thunderhawk');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'IX', 'Tempest Pattern Land Speeder');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Vehicle', 'XII', 'Fenris Pattern Storm Talon');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'I', 'Night Vision');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'V', 'Stormwind Pattern Jetpack');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'X', 'Iron Halo');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'VI', 'Machine Spirit Core');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'IX', 'Stealth Drive');
INSERT INTO armaments(type, mrkDesignation, eName)
	VALUES('Mod', 'III', 'Teleporter');


SELECT * FROM armaments;

--------------------------------------------------------------------

-- Create Great Company Armaments Table --
DROP TABLE IF EXISTS gcArmaments;

CREATE TABLE gcArmaments (
	gcid		INT NOT NULL REFERENCES greatCompany(gcid),
	eid		INT NOT NULL REFERENCES armaments(eid),
	UNIQUE (gcid, eid),
	primary key (gcid, eid)
);

-- Insert into gcArmaments --
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 7);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 8);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 9);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 10);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 16);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 20);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(1, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 10);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(2, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 16);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 20);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(3, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 16);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 20);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(4, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 7);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 8);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 9);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 10);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 16);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 20);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(5, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(6, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(7, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(8, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 7);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 8);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 9);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 10);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 16);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 20);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 29);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(9, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 7);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 10);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 12);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(10, 32);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 31);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(11, 33);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 1);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 3);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 13);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 14);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 17);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 18);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 19);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 21);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 22);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 23);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 24);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 25);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 26);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 27);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(12, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 2);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 4);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 5);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 6);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 11);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 15);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 28);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 30);
INSERT INTO gcArmaments(gcid, eid)
	VALUES(13, 33);

SELECT * FROM gcArmaments;

--------------------------------------------------------------------

-- Create Issued Armaments Table --
DROP TABLE IF EXISTS issuedArmaments;

CREATE TABLE issuedArmaments (
	aid		INT NOT NULL REFERENCES astartes(aid),
	gcid		INT NOT NULL,
	eid		INT NOT NULL,
	foreign key(gcid, eid) REFERENCES gcArmaments(gcid, eid),
	primary key(aid, gcid, eid)
);

-- Insert into Issued Armaments --
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(1, 1, 5);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(1, 1, 19);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(1, 1, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(1, 1, 33);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(2, 2, 3);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(2, 2, 10);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(2, 2, 29);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(2, 2, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(3, 3, 2);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(3, 3, 17);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(3, 3, 29);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 1);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 4);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 16);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 28);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(4, 4, 31);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(5, 5, 4);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(5, 5, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(5, 5, 9);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(5, 5, 32);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(6, 6, 1);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(6, 6, 3);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(6, 6, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(6, 6, 18);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 3);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 1);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 19);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 28);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(7, 7, 31);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(8, 8, 5);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(8, 8, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(8, 8, 19);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(8, 8, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(9, 9, 2);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(9, 9, 5);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(9, 9, 8);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 4);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 18);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 28);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(10, 10, 32);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 1);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 14);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 28);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(11, 11, 33);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(12, 12, 3);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(12, 12, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(12, 12, 17);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(12, 12, 28);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(13, 13, 4);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(13, 13, 6);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(13, 13, 15);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(13, 13, 30);
INSERT INTO issuedArmaments(aid, gcid, eid)
	VALUES(13, 13, 33);

SELECT * FROM issuedArmaments;

--------------------------------------------------------------------

-- Create Weapons Subtype Table --
DROP TABLE IF EXISTS weapons;

CREATE TABLE weapons (
	wid		INT UNiQUE NOT NULL REFERENCES armaments(eid),
	wtype		TEXT NOT NULL,
	ammo		TEXT NOT NULL,
	primary key(wid)	
);

-- Insert into Weapons --
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(1, 'Range', '.75 Calibre Rounds');
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(2, 'Range', '.75 Calibre Rounds');
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(3, 'Melee', 'NA');
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(4, 'Melee', 'NA');
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(5, 'Melee', 'NA');
INSERT INTO weapons(wid, wtype, ammo)
	VALUES(6, 'Melee', 'NA');

SELECT * FROM weapons;

--------------------------------------------------------------------

-- Create Armour Subtype Table --
DROP TABLE IF EXISTS armour;

CREATE TABLE armour (
	arid		INT UNIQUE NOT NULL REFERENCES armaments(eid),
	atype		TEXT NOT NULL,
	plating		TEXT NOT NULL,
	primary key(arid)
);

-- Insert into Armour --
INSERT INTO armour(arid, atype, plating)
	VALUES(7, 'Assault', 'Titanium');
INSERT INTO armour(arid, atype, plating)
	VALUES(8, 'Assault', 'Tungsten');
INSERT INTO armour(arid, atype, plating)
	VALUES(9, 'Assault', 'Inconel');
INSERT INTO armour(arid, atype, plating)
	VALUES(10, 'Tactical', 'Adamantium');
INSERT INTO armour(arid, atype, plating)
	VALUES(11, 'Tactical', 'Ceremite');
INSERT INTO armour(arid, atype, plating)
	VALUES(12, 'Tactical', 'Carabonite');
INSERT INTO armour(arid, atype, plating)
	VALUES(13, 'Crusader', 'Bearalite');
INSERT INTO armour(arid, atype, plating)
	VALUES(14, 'Crusader', 'Doragonite');
INSERT INTO armour(arid, atype, plating)
	VALUES(15, 'Devastator', 'Cataphractii');
INSERT INTO armour(arid, atype, plating)
	VALUES(16, 'Devastator', 'Indomatus');
INSERT INTO armour(arid, atype, plating)
	VALUES(17, 'Knight', 'Gorganian');
INSERT INTO armour(arid, atype, plating)
	VALUES(18, 'Terminator', 'Taratereatus');
INSERT INTO armour(arid, atype, plating)
	VALUES(19, 'Terminator', 'Blessed Aegis');

SELECT * FROM armour;

--------------------------------------------------------------------

-- Create Vehicle Subtype Table --
DROP TABLE IF EXISTS vehicle;

CREATE TABLE vehicle (
	vid		INT UNIQUE NOT NULL REFERENCES armaments(eid),
	vtype		TEXT NOT NULL,
	terrain		TEXT NOT NULL,
	primary key(vid)
);

-- Insert into Vehicle --
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(20, 'Transport', 'Tundra');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(21, 'Transport', 'Jungle');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(22, 'Tank', 'Multi-Ground');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(23, 'Support', 'Rocky');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(24, 'Tank', 'Multi-Ground');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(25, 'Air Transport', 'Open Sky');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(26, 'Air Assault', 'Open Sky');
INSERT INTO vehicle(vid, vtype, terrain)
	VALUES(27, 'Air Assault', 'Open Sky');

SELECT * FROM vehicle;

--------------------------------------------------------------------

-- Create Mods Subtype Table --
DROP TABLE IF EXISTS mods;

CREATe TABLE mods (
	mid 		INT UNIQUE NOT NULL REFERENCES armaments(eid),
	mEffect		TEXT NOT NULL,
	primary key(mid)
);

-- Insert into Mods --
INSERT INTO mods(mid, mEffect)
	VALUES(28, 'Low-Light Vision');
INSERT INTO mods(mid, mEffect)
	VALUES(29, 'Short-Range Flight');
INSERT INTO mods(mid, mEffect)
	VALUES(30, 'Force Field');
INSERT INTO mods(mid, mEffect)
	VALUES(31, 'Machine Affinity');
INSERT INTO mods(mid, mEffect)
	VALUES(32, 'Invisibility');
INSERT INTO mods(mid, mEffect)
	VALUES(33, 'Teleportation');

SELECT * FROM mods;

--------------------------------------------------------------------

-- Create Views to Help Database Managers Eliminate Unecessary Data -- 

-- Create Weapon Info View --
Drop VIEW IF EXISTS weaponInfo;

CREATE OR REPLACE VIEW weaponInfo AS
SELECT a.eid, a.mrkdesignation, a.ename, w.wtype, w.ammo
FROM armaments a INNER JOIN weapons w
ON a.eid = w.wid;

SELECT * FROM weaponInfo;

-- Create Armour Info View --
DROP VIEW IF EXISTS armourInfo;

CREATE OR REPLACE VIEW armourInfo AS
SELECT a.eid, a.mrkdesignation, a.ename, ar.atype, ar.plating
FROM armaments a INNER JOIN armour ar
ON a.eid = ar.arid;

SELECT * FROM armourInfo;

-- Create Vehicle Info View --
DROP VIEW IF EXISTS vehicleInfo;

CREATE OR REPLACE VIEW vehicleInfo AS
SELECT a.eid, a.mrkdesignation, a.ename, v.vtype, v.terrain
FROM armaments a INNER JOIN vehicle v
ON a.eid = v.vid;

SELECT * FROM vehicleInfo;

-- Create Mod Info View --
DROP VIEW IF EXISTS modInfo;

CREATE OR REPLACE VIEW modInfo AS
SELECT a.eid, a.mrkdesignation, a.ename, m.meffect
FROM armaments a INNER JOIN mods m
ON a.eid = m.mid;

SELECT * FROM modInfo;

-- Create Space Marine Info View --
DROP VIEW IF EXISTS spacemarineInfo;

CREATE OR REPLACE VIEW spacemarineInfo AS
SELECT a.aid, a.fname, a.lname, vf.chaptername, vf.primarchname, 
a.servicestart, gsb.gsid, gsh.dateofimplant, 
gc.companyname, s.specialization, vf.battlecolors
FROM astartes a INNER JOIN geneseedHistory gsh
ON a.aid = gsh.aid
INNER JOIN geneseedBank gsb
ON gsh.gsid = gsb.gsid
INNER JOIN greatCompany gc
ON gc.gcid = a.gcid
INNER JOIN rank r
ON a.rid = r.rid
INNER JOIN specialization s
ON a.sid = s.sid
INNER JOIn vlkaFenryka vf
ON gsb.pchid = vf.chid;

SELECT * FROM spacemarineInfo;

-- Create Dreadnought Info View --
DROP VIEW IF EXISTS dreadnoughtInfo;

CREATE OR REPLACE VIEW dreadnoughtInfo AS
SELECT a.aid, a.fname, a.lname, d.dreadtype, a.servicestart, ad.internmentdate,
gc.companyname
FROM astartes a INNER JOIN activeDreadnought ad
ON a.aid = ad.aid
INNER JOIN dreadnought d
ON ad.did = d.did
INNER JOIN greatCompany gc
ON gc.gcid = a.gcid;

SELECT * FROM dreadnoughtInfo;

-- Create Spacemarine Weapon View --
DROP VIEW IF EXISTS spacemarineWeapons;

CREATE OR REPLACE VIEW spacemarineWeapons AS
SELECT a.aid, a.fname, a.lname, wi.mrkdesignation, wi.ename, wi.wtype, wi.ammo
FROM astartes a INNER JOIN issuedArmaments ia
ON a.aid = ia.aid
INNER JOIN weaponInfo wi
ON ia.eid = wi.eid;

SELECT * FROM spacemarineWeapons;

-- Create Spacemarine Armour View --
DROP VIEW IF EXISTS spacemarineArmour;

CREATE OR REPLACE VIEW spacemarineArmour AS
SELECT a.aid, a.fname, a.lname, ar.mrkdesignation, ar.ename, ar.atype, ar.plating
FROM astartes a INNER JOIN issuedArmaments ia
ON a.aid = ia.aid
INNER JOIN armourInfo ar
ON ia.eid = ar.eid;

SELECT * FROM spacemarineArmour;

-- Create Spacemarine Mod View --
Drop VIEW IF EXISTS spacemarineMods; 

CREATE OR REPLACE VIEW spacemarineMods AS
SELECT a.aid, a.fname, a.lname, mi.mrkdesignation, mi.ename, mi.meffect
FROM astartes a INNER JOIN issuedArmaments ia
ON a.aid = ia.aid
INNER JOIN modInfo mi
ON ia.eid = mi.eid;

SELECT * FROM spacemarineMods;

-- Create Union View For Space Marine Equipment --
DROP VIEW IF EXISTS spacemarineEquipment;

CREATE OR REPLACE VIEW spacemarineEquipment AS
SELECT aid, fname, lname, ename FROM spacemarineWeapons 
UNION
SELECT aid, fname, lname, ename FROM spacemarineArmour
UNION
SELECT aid, fname, lname, ename FROM spacemarineMods;

SELECT * FROM spacemarineEquipment;

--------------------------------------------------------------------

-- Create Stored Procedures --

-- Stored Procedure To Get Spacemarine Equipment by Name --
CREATE OR REPLACE FUNCTION getSPEquipByFname(TEXT, TEXT,REFCURSOR) RETURNS refcursor AS 
$$
DECLARE
	spFname	    TEXT		:= $1;
	spLname		TEXT		:= $2;
	resultset	REFCURSOR 	:= $3;
BEGIN
   OPEN resultset FOR 
      SELECT	ename
        FROM   	spacemarineEquipment
       WHERE  	fname LIKE spFname
         AND	lname LIKE spLname;
   return resultset;
end;
$$ 
LANGUAGE plpgsql;

SELECT getSPEquipByFname('Lo%', 'Grim%', 'results');
FETCH ALL FROM results;

-- Stored Procedure To Get Spacemarine Info by Name --
CREATE OR REPLACE FUNCTION getSPEquipByFname(TEXT, TEXT,REFCURSOR) RETURNS refcursor AS 
$$
DECLARE
	spFname	    TEXT		:= $1;
	spLname		TEXT		:= $2;
	resultset	REFCURSOR 	:= $3;
BEGIN
   OPEN resultset FOR 
      SELECT	*
        FROM   	spacemarineInfo
       WHERE  	fname LIKE spFname
         AND	lname LIKE spLname;
   return resultset;
end;
$$ 
LANGUAGE plpgsql;

SELECT getSPEquipByFname('Lo%', 'Grim%', 'results');
FETCH ALL FROM results;

--------------------------------------------------------------------

-- Test Quries --
-- SELECT * FROM greatCompany g INNER JOIN astartes a ON a.gcid = g.gcid INNER JOIN rank r ON r.rid = a.rid INNER JOIN specialization s ON a.sid = s.sid INNER JOIN vlkaFenryka v ON g.pchid = v.chid;
-- SELECT * FROM geneseedHistory gh INNER JOIN astartes a ON gh.aid = a.aid INNER JOIN geneseedBank gs ON gs.gsid = gh.gsid;
-- SELECT * FROM activeDreadnought ad INNER JOIN dreadnought d ON ad.did = d.did INNER JOIN astartes a ON ad.aid = a.aid INNER JOIN geneseedHistory gsh ON gsh.aid = a.aid INNER JOIN geneseedBank gsb on gsb.gsid = gsh.gsid;
-- SELECT * FROM gcArmaments gca INNER JOIN armaments a ON gca.eid = a.eid INNER JOIN greatCompany gc ON gc.gcid = gca.gcid WHERE gca.gcid = 13;
-- SELECT * FROM astartes a INNER JOIN issuedArmaments  ia ON a.aid = ia.aid INNER JOIN armaments ar ON ia.eid = ar.eid;
-- SELECT * FROM armaments a INNER JOIN weapons w ON a.eid = w.wid;
-- SELECT * FROM armaments a INNER JOIN armour ar ON a.eid = ar.arid;
-- SELECT * FROM armaments a INNER JOIN vehicle v ON a.eid = v.vid;
-- SELECT * FROM armaments a INNER JOIN mods m ON a.eid = m.mid;
-- SELECT * FROM spacemarineInfo WHERE fname LIKE 'Lo%';
-- SELECT ename FROM spacemarineEquipment WHERE aid=8;