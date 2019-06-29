/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_SONNI_ALI',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName			)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_SONNI_ALI',	'LOC_CITY_NAME_GAO'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_SONNI_ALI',	'LOC_LEADER_CVS_SONNI_ALI_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_SONNI_ALI',	'LOC_PEDIA_LEADERS_PAGE_CVS_SONNI_ALI_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_SONNI_ALI',	'LEADER_CVS_SONNI_ALI_NEUTRAL',	'LEADER_CVS_SONNI_ALI_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_SONNI_ALI',	'RELIGION_ISLAM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_SONNI_ALI',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_PLAYER_NOT_SONNI_ALI',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_SONGHAI',	'REQ_CVS_LEADER_IS_SONNI_ALI'	),
		('REQSET_CVS_LEADER_NOT_SONGHAI',	'REQ_CVS_LEADER_NOT_SONNI_ALI'	),
		('REQSET_CVS_PLAYER_IS_SONNI_ALI',	'REQ_CVS_LEADER_IS_SONNI_ALI'	),
		('REQSET_CVS_PLAYER_NOT_SONNI_ALI',	'REQ_CVS_LEADER_NOT_SONNI_ALI'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Inverse	)
VALUES	('REQ_CVS_LEADER_IS_SONNI_ALI',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	0		),
		('REQ_CVS_LEADER_NOT_SONNI_ALI',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_SONNI_ALI',		'LeaderType',	'LEADER_CVS_SONNI_ALI'	),
		('REQ_CVS_LEADER_NOT_SONNI_ALI',	'LeaderType',	'LEADER_CVS_SONNI_ALI'	);
		