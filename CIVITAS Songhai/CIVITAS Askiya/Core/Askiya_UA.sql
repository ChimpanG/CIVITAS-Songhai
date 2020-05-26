/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Temporary View
-----------------------------------------------

CREATE VIEW IF NOT EXISTS vAskiyaUA AS
SELECT DISTINCT
        SUBSTR(a.DistrictType, 10)||'_'||SUBSTR(b.BeliefType, 8)||'_'||SUBSTR(a.YieldType,
		7) AS Reference,
		b.BeliefType,
		a.DistrictType,
		a.YieldType,
		a.YieldChangeAsDomesticDestination AS Domestic,
		a.YieldChangeAsInternationalDestination AS International
FROM    District_TradeRouteYields AS a, Beliefs AS b
WHERE   b.BeliefClassType = 'BELIEF_CLASS_FOLLOWER'
AND     DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL AND DistrictType NOT IN ('DISTRICT_CITY_CENTER'));

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_ASKIYA_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ASKIYA_UA_TRADE_TO_OTHERS',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_ASKIYA_UA',	'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ASKIYA',	'TRAIT_LEADER_CVS_ASKIYA_UA'	);

-----------------------------------------------
-- BeliefModifiers
-----------------------------------------------

INSERT INTO	BeliefModifiers (BeliefType, ModifierId)
SELECT DISTINCT
		BeliefType,
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_FOUNDED'
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	BeliefModifiers (BeliefType, ModifierId)
SELECT DISTINCT
		BeliefType,
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_CONQUERED'
FROM	vAskiyaUA
WHERE	International > 0;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',		'COLLECTION_ALL_CITIES',	'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_ASKIYA_UA_TRADE_TO_OTHERS',	'COLLECTION_OWNER',			'EFFECT_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_FOUNDED',
		'MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',
		NULL,
		'REQSET_CVS_ASKIYA_UA_FOUNDED_CITY_HAS_'||DistrictType
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_FOUNDED',
		'MODTYPE_CVS_ASKIYA_UA_TRADE_TO_OTHERS',
		NULL,
		'REQSET_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_CONQUERED',
		'MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',
		NULL,
		'REQSET_CVS_ASKIYA_UA_CONQUERED_CITY_HAS_'||DistrictType
FROM	vAskiyaUA
WHERE	International > 0;

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_CONQUERED',
		'MODTYPE_CVS_ASKIYA_UA_TRADE_TO_OTHERS',
		NULL,
		'REQSET_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType
FROM	vAskiyaUA
WHERE	International > 0;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_FOUNDED',
		'ModifierId',
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_FOUNDED'
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_FOUNDED',
		'YieldType',
		YieldType
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_FOUNDED',
		'Amount',
		Domestic
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_FOUNDED',
		'Domestic',
		1
FROM	vAskiyaUA
WHERE	Domestic > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_ATTACH_'||Reference||'_CONQUERED',
		'ModifierId',
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_CONQUERED'
FROM	vAskiyaUA
WHERE	International > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_CONQUERED',
		'YieldType',
		YieldType
FROM	vAskiyaUA
WHERE	International > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_CONQUERED',
		'Amount',
		International
FROM	vAskiyaUA
WHERE	International > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_ASKIYA_UA_'||Reference||'_CONQUERED',
		'Domestic',
		1
FROM	vAskiyaUA
WHERE	International > 0;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType,
		'REQUIREMENTSET_TEST_ALL'
FROM	vAskiyaUA;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_FOUNDED_CITY_HAS_'||DistrictType,
		'REQUIREMENTSET_TEST_ALL'
FROM	vAskiyaUA;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_CONQUERED_CITY_HAS_'||DistrictType,
		'REQUIREMENTSET_TEST_ALL'
FROM	vAskiyaUA;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType,
		'REQ_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType,
		'REQ_CVS_LEADER_IS_ASKIYA' -- Set in Leader file
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_FOUNDED_CITY_HAS_'||DistrictType,
		'REQUIRES_CITY_FOLLOWS_RELIGION'
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_FOUNDED_CITY_HAS_'||DistrictType,
		'REQ_CVS_ASKIYA_UA_CITY_HAS_'||DistrictType
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_FOUNDED_CITY_HAS_'||DistrictType,
		'REQ_CVS_ASKIYA_UA_CITY_FOUNDED'
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_CONQUERED_CITY_HAS_'||DistrictType,
		'REQUIRES_CITY_FOLLOWS_RELIGION'
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_CONQUERED_CITY_HAS_'||DistrictType,
		'REQ_CVS_ASKIYA_UA_CITY_HAS_'||DistrictType
FROM	vAskiyaUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_ASKIYA_UA_CONQUERED_CITY_HAS_'||DistrictType,
		'REQ_CVS_ASKIYA_UA_CITY_CONQUERED'
FROM	vAskiyaUA;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT DISTINCT
		'REQ_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType,
		'REQUIREMENT_PLAYER_FOUNDED_RELIGION_WITH_BELIEF'
FROM	vAskiyaUA;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT DISTINCT
		'REQ_CVS_ASKIYA_UA_CITY_HAS_'||DistrictType,
		'REQUIREMENT_CITY_HAS_DISTRICT'
FROM	vAskiyaUA;

INSERT INTO Requirements
		(RequirementId,							RequirementType,						Inverse	)
VALUES	('REQ_CVS_ASKIYA_UA_CITY_FOUNDED',		'REQUIREMENT_CITY_IS_ORIGINAL_OWNER',	0		),
		('REQ_CVS_ASKIYA_UA_CITY_CONQUERED',	'REQUIREMENT_CITY_IS_ORIGINAL_OWNER',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT DISTINCT
		'REQ_CVS_ASKIYA_UA_IS_FOUNDER_'||BeliefType,
		'BeliefType',
		BeliefType
FROM	vAskiyaUA;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT DISTINCT
		'REQ_CVS_ASKIYA_UA_CITY_HAS_'||DistrictType,
		'DistrictType',
		DistrictType
FROM	vAskiyaUA;

-----------------------------------------------
-- Temporary View
-----------------------------------------------

DROP VIEW vAskiyaUA;