/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_SONGHAI_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_SONGHAI_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_SONGHAI_UU_IGNORE_RIVERS',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_SONGHAI_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_SONGHAI_UU',		'CLASS_CVS_SONGHAI_UU'	),
		('ABILITY_CVS_SONGHAI_UU',	'CLASS_CVS_SONGHAI_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_SONGHAI_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_COURSER';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_SONGHAI_UU',	'LOC_UNIT_CVS_SONGHAI_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'TRAIT_CIVILIZATION_CVS_SONGHAI_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_SONGHAI_UU',	-- UnitType
		'LOC_UNIT_CVS_SONGHAI_UU_NAME',	-- Name
		'LOC_UNIT_CVS_SONGHAI_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_SONGHAI_UU', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat + 5, -- Combat
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance + 1,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_COURSER';

-----------------------------------------------
-- Units_XP2
-----------------------------------------------

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost) 
SELECT	'UNIT_CVS_SONGHAI_UU',
		ResourceMaintenanceAmount,
		ResourceCost
FROM	Units_XP2
WHERE	UnitType = 'UNIT_COURSER';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_SONGHAI_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_COURSER';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_SONGHAI_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_COURSER';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_SONGHAI_UU',	'UNIT_COURSER'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_SONGHAI_UU',	'LOC_ABILITY_CVS_SONGHAI_UU_NAME',	'LOC_ABILITY_CVS_SONGHAI_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId								)
VALUES	('ABILITY_CVS_SONGHAI_UU',	'MODIFIER_CVS_SONGHAI_UU_IGNORE_RIVERS'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,		EffectType							)
VALUES	('MODTYPE_CVS_SONGHAI_UU_IGNORE_RIVERS',	'COLLECTION_OWNER',	'EFFECT_ADJUST_UNIT_IGNORE_RIVERS'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_SONGHAI_UU_IGNORE_RIVERS',	'MODTYPE_CVS_SONGHAI_UU_IGNORE_RIVERS',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_SONGHAI_UU_IGNORE_RIVERS',	'Ignore',	1		);

-----------------------------------------------
-- MomentIllustrations
-- I can't be bothered to make these...
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,		GameDataType,			Texture							)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',	'UNIT_CVS_SONGHAI_UU',	'MomentXP2_TrainingMadekalu'	);