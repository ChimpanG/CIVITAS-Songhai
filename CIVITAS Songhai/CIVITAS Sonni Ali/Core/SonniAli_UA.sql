/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_SONNI_ALI_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_SONNI_ALI_UA_COMBAT_STRENGTH',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONNI_ALI_UA_KILL_YIELD',			'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_SONNI_ALI_UA',	'LOC_TRAIT_LEADER_CVS_SONNI_ALI_UA_NAME',	'LOC_TRAIT_LEADER_CVS_SONNI_ALI_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_SONNI_ALI',	'TRAIT_LEADER_CVS_SONNI_ALI_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_LEADER_CVS_SONNI_ALI_UA',	'MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT'	),
		('TRAIT_LEADER_CVS_SONNI_ALI_UA',	'MODIFIER_CVS_SONNI_ALI_UA_KILL_SCIENCE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_SONNI_ALI_UA_COMBAT_STRENGTH',	'COLLECTION_PLAYER_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_SONNI_ALI_UA_KILL_YIELD',			'COLLECTION_PLAYER_COMBAT',	'EFFECT_ADJUST_UNIT_POST_COMBAT_YIELD'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									OwnerRequirementSetId,					SubjectRequirementSetId						)
VALUES	('MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT',		'MODTYPE_CVS_SONNI_ALI_UA_COMBAT_STRENGTH',		'REQSET_CVS_SONNI_ALI_UA_GOLDEN_AGE',	'REQSET_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE'	),
		('MODIFIER_CVS_SONNI_ALI_UA_KILL_SCIENCE',		'MODTYPE_CVS_SONNI_ALI_UA_KILL_YIELD',			'REQSET_CVS_SONNI_ALI_UA_GOLDEN_AGE',	NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,						Value			)
VALUES	('MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT',	'Amount',					5				),
		('MODIFIER_CVS_SONNI_ALI_UA_KILL_SCIENCE',	'YieldType',				'YIELD_SCIENCE'	),
		('MODIFIER_CVS_SONNI_ALI_UA_KILL_SCIENCE',	'PercentDefeatedStrength',	50				);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,								Context,	Text														)
VALUES  ('MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT',	'Preview',	'LOC_MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_SONNI_ALI_UA_GOLDEN_AGE',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_SONNI_ALI_UA_GOLDEN_AGE',		'REQ_CVS_SONNI_ALI_UA_GOLDEN_AGE'		),
		('REQSET_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE',	'REQ_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,						Inverse	)
VALUES	('REQ_CVS_SONNI_ALI_UA_GOLDEN_AGE',		'REQUIREMENT_PLAYER_HAS_GOLDEN_AGE',	0		),
		('REQ_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE',	'REQUIREMENT_OPPONENT_ERA_AGE_MATCHES',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,		Value		)
VALUES	('REQ_CVS_SONNI_ALI_UA_GOLDEN_AGE',		'Type',		'GOLDEN'	),
		('REQ_CVS_SONNI_ALI_UA_NOT_GOLDEN_AGE',	'Type',		'GOLDEN'	);