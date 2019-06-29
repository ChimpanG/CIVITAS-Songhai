/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Temporary View
-----------------------------------------------

CREATE VIEW IF NOT EXISTS vSonghaiUA (DistrictType) AS
SELECT	DistrictType
FROM	Districts
WHERE	DistrictType IN
(
'DISTRICT_CAMPUS',
'DISTRICT_THEATER',
'DISTRICT_HOLY_SITE',
'DISTRICT_COMMERCIAL_HUB',
'DISTRICT_INDUSTRIAL_ZONE'
);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_RIVER_ADJACENCY',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'TRAIT_CIVILIZATION_CVS_SONGHAI_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId											)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_HEALING_ENEMY'				),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_HEALING_NEUTRAL'			),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_HEALING_FRIENDLY'			),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_HEALING_GARRISON'			),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_TRADE_DOMESTIC'			),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL'		);

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId	)
SELECT	'TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType
FROM	vSonghaiUA;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType															)
VALUES	('MODTYPE_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY'		),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_YIELD_PER_POST_IN_FOREIGN_CITY'	),
		('MODTYPE_CVS_SONGHAI_UA_RIVER_ADJACENCY',		'COLLECTION_PLAYER_CITIES',		'EFFECT_RIVER_ADJACENCY'											),
		('MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_HEALING_MODIFIERS'								);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId						)
VALUES	('MODIFIER_CVS_SONGHAI_UA_HEALING_ENEMY',			'MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'REQSET_CVS_SONGHAI_UA_ADJ_RIVER'			),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_NEUTRAL',			'MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'REQSET_CVS_SONGHAI_UA_ADJ_RIVER'			),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_FRIENDLY',		'MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'REQSET_CVS_SONGHAI_UA_ADJ_RIVER'			),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_GARRISON',		'MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON'	),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_DOMESTIC',			'MODTYPE_CVS_SONGHAI_UA_TRADE_DOMESTIC',		NULL										),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',		'MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	NULL										);

INSERT INTO Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId )
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'MODTYPE_CVS_SONGHAI_UA_RIVER_ADJACENCY',	NULL
FROM	vSonghaiUA;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value			)
VALUES	('MODIFIER_CVS_SONGHAI_UA_HEALING_ENEMY',		'Type',			'ENEMY'			),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_ENEMY',		'Amount',		5				),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_NEUTRAL',		'Type',			'NEUTRAL'		),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_NEUTRAL',		'Amount',		10				),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_FRIENDLY',	'Type',			'FRIENDLY'		),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_FRIENDLY',	'Amount',		15				),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_GARRISON',	'Type',			'ALL'			),
		('MODIFIER_CVS_SONGHAI_UA_HEALING_GARRISON',	'Amount',		20				),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'YieldType',	'YIELD_SCIENCE'	),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'Amount',		1				),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'YieldType',	'YIELD_SCIENCE'	),
		('MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'Amount',		1				);

INSERT INTO ModifierArguments
		(ModifierId,									Name,		Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'Amount',	1
FROM	vSonghaiUA;

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'TilesRequired',	2
FROM	vSonghaiUA;

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'DistrictType',	DistrictType
FROM	vSonghaiUA;

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'Description',	'LOC_MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType
FROM	vSonghaiUA;

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'YieldType',	'YIELD_SCIENCE'
FROM	Districts WHERE DistrictType = 'DISTRICT_CAMPUS';

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'YieldType',	'YIELD_FAITH'
FROM	Districts WHERE DistrictType = 'DISTRICT_HOLY_SITE';

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'YieldType',	'YIELD_GOLD'
FROM	Districts WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'YieldType',	'YIELD_CULTURE'
FROM	Districts WHERE DistrictType = 'DISTRICT_THEATER';

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UA_RIVER_'||DistrictType,	'YieldType',	'YIELD_PRODUCTION'
FROM	Districts WHERE DistrictType = 'DISTRICT_INDUSTRIAL_ZONE';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId								)
VALUES	('REQSET_CVS_SONGHAI_UA_ADJ_RIVER',					'REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER'			),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',		'REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER'			),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',		'REQ_CVS_SONGHAI_UA_IS_GARRISONED'			),
		('REQSET_CVS_SONGHAI_UA_RIVER_DISTRICT',			'REQ_CVS_SONGHAI_UA_DISTRICT_MET'			),
		('REQSET_CVS_SONGHAI_UA_RIVER_DISTRICT',			'REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER'			);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId	)
SELECT	'REQSET_CVS_SONGHAI_UA_IS_DISTRICT',	'REQ_CVS_SONGHAI_UA_IS_'||DistrictType
FROM	vSonghaiUA;
		
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_SONGHAI_UA_ADJ_RIVER',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONGHAI_UA_RIVER_DISTRICT',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONGHAI_UA_IS_DISTRICT',			'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,							Inverse	)
VALUES	('REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER',		'REQUIREMENT_PLOT_ADJACENT_TO_RIVER',		0		),
		('REQ_CVS_SONGHAI_UA_IS_GARRISONED',		'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_SONGHAI_UA_DISTRICT_MET',			'REQUIREMENT_REQUIREMENTSET_IS_MET',		0		);

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_SONGHAI_UA_IS_'||DistrictType,		'REQUIREMENT_DISTRICT_TYPE_MATCHES'
FROM	vSonghaiUA;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value								)
VALUES	('REQ_CVS_SONGHAI_UA_IS_GARRISONED',	'DistrictType',		'DISTRICT_CITY_CENTER'				),
		('REQ_CVS_SONGHAI_UA_DISTRICT_MET',		'RequirementSetId',	'REQSET_CVS_SONGHAI_UA_IS_DISTRICT'	);

INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value	)
SELECT	'REQ_CVS_SONGHAI_UA_IS_'||DistrictType,		'DistrictType',		DistrictType
FROM	vSonghaiUA;