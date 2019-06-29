/*
	Mod Support
	Authors: ChimpanG
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType)
SELECT	'LEADER_CVS_SONNI_ALI',		'RELIGION_SHIA'
WHERE EXISTS (SELECT ReligionType FROM Religions WHERE ReligionType = 'RELIGION_SHIA');

CREATE TRIGGER IF NOT EXISTS CVS_SONNI_ALI_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_SHIA'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType)
	VALUES	('LEADER_CVS_SONNI_ALI',	NEW.ReligionType);
END;

-----------------------------------------------
-- 40sw4rm's Old World
-----------------------------------------------

CREATE TABLE IF NOT EXISTS TSL 
    (
    MapType		TEXT	DEFAULT NULL,
    Civ			TEXT	DEFAULT NULL,
    LeaderType	TEXT	DEFAULT NULL,
    X			INTEGER	DEFAULT	NULL,
    Y			INTEGER	DEFAULT NULL
    );

INSERT INTO TSL
		(MapType,		Civ,						LeaderType,				X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_SONNI_ALI',	12,	18	);

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_SONNI_ALI',	'GiantEarth',		15,		42	),
		('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_SONNI_ALI',	'GreatestEarthMap',	46,		27	), 
		('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_SONNI_ALI',	'CordiformEarth',	35,		14	);
