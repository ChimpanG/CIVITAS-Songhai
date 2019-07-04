/*
	Civilization
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind				)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,				Name,									Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity				)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LOC_CIVILIZATION_CVS_SONGHAI_NAME',	'LOC_CIVILIZATION_CVS_SONGHAI_DESCRIPTION',	'LOC_CIVILIZATION_CVS_SONGHAI_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_AFRICAN' 	);

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,		Name						)
VALUES	('NAMED_DESERT_AZWAGH',	'LOC_NAMED_DESERT_AZWAGH'	),
		('NAMED_DESERT_TENERE',	'LOC_NAMED_DESERT_TENERE'	);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType			)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'NAMED_DESERT_SAHARA'	),
		('CIVILIZATION_CVS_SONGHAI',	'NAMED_DESERT_TENERE'	),
		('CIVILIZATION_CVS_SONGHAI',	'NAMED_DESERT_AZWAGH'	);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,		Name						)
VALUES	('NAMED_MOUNTAIN_AIR',	'LOC_NAMED_MOUNTAIN_AIR'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType		)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'NAMED_MOUNTAIN_AIR'	);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType				)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'NAMED_RIVER_BANI_RIVER'	),
		('CIVILIZATION_CVS_SONGHAI',	'NAMED_RIVER_NIGER'			);

-----------------------------------------------
-- NamedOceanCivilizations
-----------------------------------------------

INSERT INTO NamedOceanCivilizations
		(CivilizationType,				NamedOceanType					)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'NAMED_OCEAN_ATLANTIC_OCEAN'	);

-----------------------------------------------
-- NamedLakes
-----------------------------------------------

REPLACE INTO NamedLakes
		(NamedLakeType,			Name					)
VALUES	('NAMED_LAKE_GOSSI',	'LOC_NAMED_LAKE_GOSSI'	);

-----------------------------------------------
-- NamedLakeCivilizations
-----------------------------------------------

INSERT INTO NamedLakeCivilizations
		(CivilizationType,				NamedLakeType		)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'NAMED_LAKE_GOSSI'	);
		
-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			 CityName )
VALUES	('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_GAO'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TIMBUKTU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_JENNE'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_KUKIYA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_WALATA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_GOUNDAM'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_BAMAKO'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TAGHAZA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_AGADEZ'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_ESSOUK'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_AWDAGHUST'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_SEGU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_ARAOUANE'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TAOUDENNI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_SANSANDING'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_BANAMBA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_BIRNIN_KEBBI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_KUMBI_SALEH'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_KANO'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_GWANDU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_ZAZZAU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_KAYI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TENENKOU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_DOUENTZA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_SARAFERE'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_RAS_KEBDANA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_YATENGA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_NIORO'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_MASINA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_ARGUNGU'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_MOPTI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_OUATAGOUNA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TEKEDDA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_OUADANE'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_NIAMEY'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_SAN'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_BOUSSA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TONDIBI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_DORI'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_BAMBA'),
		('CIVILIZATION_CVS_SONGHAI', 'LOC_CITY_NAME_TORODI');		
			
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,							Female	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_1',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_2',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_3',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_4',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_5',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_6',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_7',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_8',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_9',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_MALE_10',		0 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_1',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_2',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_3',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_4',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_5',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_6',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_7',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_8',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_9',		1 		),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CITIZEN_CVS_SONGHAI_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_SONGHAI_LOCATION',		10			),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_SONGHAI_SIZE',			20			),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_SONGHAI_POPULATION',	30			),
		('CIVILIZATION_CVS_SONGHAI',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_SONGHAI_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasFeatures
		(CivilizationType,				FeatureType,			Tier	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'FEATURE_FLOODPLAINS',	1		);

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,			Tier	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'TERRAIN_DESERT',		2		),
		('CIVILIZATION_CVS_SONGHAI',	'TERRAIN_DESERT_HILLS',	2		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_SONGHAI',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_SONGHAI',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_PLAYER_NOT_SONGHAI',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_NOT_SONGHAI',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_PLAYER_IS_SONGHAI',	'REQ_CVS_PLAYER_IS_SONGHAI'	),
		('REQSET_CVS_PLAYER_NOT_SONGHAI',	'REQ_CVS_PLAYER_NOT_SONGHAI');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_SONGHAI',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	),
		('REQ_CVS_PLAYER_NOT_SONGHAI',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_SONGHAI',	'RequirementSetId', 'REQSET_CVS_LEADER_IS_SONGHAI'	),
		('REQ_CVS_PLAYER_NOT_SONGHAI',	'RequirementSetId', 'REQSET_CVS_LEADER_NOT_SONGHAI'	);

/*
-----------------------------------------------
-- Support for Alternative Leaders
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_LEADERNAME',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_PLAYER_NOT_LEADERNAME',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_SONGHAI',		'REQ_CVS_LEADER_IS_LEADERNAME'	),
		('REQSET_CVS_LEADER_NOT_SONGHAI',		'REQ_CVS_LEADER_NOT_LEADERNAME'	),
		('REQSET_CVS_LEADER_IS_LEADERNAME',		'REQ_CVS_LEADER_IS_LEADERNAME'	),
		('REQSET_CVS_LEADER_NOT_LEADERNAME',	'REQ_CVS_LEADER_NOT_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Inverse	)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	0		),
		('REQ_CVS_LEADER_NOT_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	1		);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'LeaderType',	'LEADER_CVS_LEADERNAME'	),
		('REQ_CVS_LEADER_NOT_LEADERNAME',	'LeaderType',	'LEADER_CVS_LEADERNAME'	);
*/