/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UA_ERA_SCORE',			'KIND_MODIFIER'	);

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
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL'		),
		('TRAIT_CIVILIZATION_CVS_SONGHAI_UA',	'MODIFIER_CVS_SONGHAI_UA_WAR_SCORE'					);
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType															)
VALUES	('MODTYPE_CVS_SONGHAI_UA_TRADE_DOMESTIC',		'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY'		),
		('MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_YIELD_PER_POST_IN_FOREIGN_CITY'	),
		('MODTYPE_CVS_SONGHAI_UA_ADJUST_HEALING',		'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_HEALING_MODIFIERS'								),
		('MODTYPE_CVS_SONGHAI_UA_ERA_SCORE',			'COLLECTION_OWNER',				'EFFECT_ADJUST_PLAYER_ERA_SCORE_PER_PRIDE_MOMENT'					);

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
		('MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',		'MODTYPE_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	NULL										),
		('MODIFIER_CVS_SONGHAI_UA_WAR_SCORE',				'MODTYPE_CVS_SONGHAI_UA_ERA_SCORE',				'REQSET_CVS_SONGHAI_UA_AT_WAR'				);

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
		('MODIFIER_CVS_SONGHAI_UA_TRADE_INTERNATIONAL',	'Amount',		1				),
		('MODIFIER_CVS_SONGHAI_UA_WAR_SCORE',			'MinScore',		1				),
		('MODIFIER_CVS_SONGHAI_UA_WAR_SCORE',			'Amount',		1				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_SONGHAI_UA_ADJ_RIVER',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONGHAI_UA_AT_WAR',				'REQUIREMENTSET_TEST_ALL'	);
	
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId						)
VALUES	('REQSET_CVS_SONGHAI_UA_ADJ_RIVER',				'REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER'	),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',	'REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER'	),
		('REQSET_CVS_SONGHAI_UA_ADJ_RIVER_GARRISON',	'REQ_CVS_SONGHAI_UA_IS_GARRISONED'	),
		('REQSET_CVS_SONGHAI_UA_AT_WAR',				'REQ_CVS_SONGHAI_UA_AT_WAR'			);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,									Inverse	)
VALUES	('REQ_CVS_SONGHAI_UA_PLOT_HAS_RIVER',	'REQUIREMENT_PLOT_ADJACENT_TO_RIVER',				0		),
		('REQ_CVS_SONGHAI_UA_IS_GARRISONED',	'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',			0		),
		('REQ_CVS_SONGHAI_UA_AT_WAR',			'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1		);
		
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value					)
VALUES	('REQ_CVS_SONGHAI_UA_IS_GARRISONED',	'DistrictType',		'DISTRICT_CITY_CENTER'	);