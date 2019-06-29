/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_SONGHAI_UI',	'KIND_TRAIT'	),
		('BUILDING_CVS_SONGHAI_UI',						'KIND_BUILDING'	),
		('MODTYPE_CVS_SONGHAI_UI_GW_YIELD',				'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_SONGHAI_UI',	'LOC_BUILDING_CVS_SONGHAI_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_SONGHAI_UI',	'CIVILIZATION_CVS_SONGHAI'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_CVS_SONGHAI_UI', -- BuildingType
		'LOC_BUILDING_CVS_SONGHAI_UI_NAME', -- Name
		'LOC_BUILDING_CVS_SONGHAI_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_BUILDING_CVS_SONGHAI_UI', -- TraitType
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_UNIVERSITY';

-----------------------------------------------
-- BuildingPrereqs
-----------------------------------------------

INSERT INTO BuildingPrereqs
		(Building,					PrereqBuilding		)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'BUILDING_LIBRARY'	);

-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,		ReplacesBuildingType	)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'BUILDING_UNIVERSITY'	);

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,			YieldChange	)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'YIELD_SCIENCE',	2			),
		('BUILDING_CVS_SONGHAI_UI',	'YIELD_FAITH',		2			);

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,			PointsPerTurn	)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'GREAT_PERSON_CLASS_WRITER',	1				);

INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_SONGHAI_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = 'BUILDING_UNIVERSITY';

-----------------------------------------------
-- Building_GreatWorks
-----------------------------------------------

INSERT INTO Building_GreatWorks
		(BuildingType,				GreatWorkSlotType,			NumSlots	)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'GREATWORKSLOT_WRITING',	2			);

-----------------------------------------------
-- Building_TourismBombs_XP2
-----------------------------------------------

INSERT INTO Building_TourismBombs_XP2 (BuildingType, TourismBombValue)
SELECT	'BUILDING_CVS_SONGHAI_UI',
		TourismBombValue
FROM	Building_TourismBombs_XP2
WHERE	BuildingType = 'BUILDING_UNIVERSITY';

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO	BuildingModifiers
		(BuildingType,				ModifierId								)
VALUES	('BUILDING_CVS_SONGHAI_UI',	'MODIFIER_CVS_SONGHAI_UA_GW_SCIENCE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,						CollectionType,		EffectType								)
VALUES	('MODTYPE_CVS_SONGHAI_UI_GW_YIELD',	'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_GREATWORK_YIELD'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,						OwnerRequirementSetId,	SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_SONGHAI_UA_GW_SCIENCE',	'MODTYPE_CVS_SONGHAI_UI_GW_YIELD',	NULL,					NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,					Value						)
VALUES	('MODIFIER_CVS_SONGHAI_UA_GW_SCIENCE',		'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'	),
		('MODIFIER_CVS_SONGHAI_UA_GW_SCIENCE',		'YieldType',			'YIELD_SCIENCE'				),
		('MODIFIER_CVS_SONGHAI_UA_GW_SCIENCE',		'YieldChange',			2							);

-----------------------------------------------
-- MomentIllustrations
-- I can't be bothered to make these...
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture						)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',	'MOMENT_DATA_BUILDING',	'BUILDING_CVS_SONGHAI_UI',	'MomentXP2_BuildingSuguba'	);