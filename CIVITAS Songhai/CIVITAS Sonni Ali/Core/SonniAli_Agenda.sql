/*
	Agenda
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_SONNI_ALI',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_SONNI_ALI',	'LOC_AGENDA_CVS_SONNI_ALI_NAME',	'LOC_AGENDA_CVS_SONNI_ALI_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_SONNI_ALI',	'LOC_AGENDA_CVS_SONNI_ALI_NAME',	'LOC_AGENDA_CVS_SONNI_ALI_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_SONNI_ALI',	'TRAIT_AGENDA_CVS_SONNI_ALI'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_SONNI_ALI',	'AGENDA_CVS_SONNI_ALI'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo				)
VALUES 	('AGENDA_CVS_SONNI_ALI',	'AGENDA_SYCOPHANT'		),
		('AGENDA_CVS_SONNI_ALI',	'AGENDA_SYMPATHIZER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_SONNI_ALI',	'AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_SONNI_ALI',	'AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									OwnerRequirementSetId,				SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_SONNI_ALI_GOLDEN_AGE',	'REQSET_CVS_SONNI_ALI_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	NULL,								'REQSET_CVS_SONNI_ALI_HAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'InitialValue',					-1													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'ReductionTurns',				5													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'ReductionValue',				-1													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_SONNI_ALI_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SONNI_ALI_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_SONNI_ALI_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_SONNI_ALI_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SONNI_ALI_HAPPY'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_SONNI_ALI_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONNI_ALI_HAPPY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SONNI_ALI_GOLDEN_AGE',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_SONNI_ALI_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_SONNI_ALI_UNHAPPY',	'REQ_CVS_SONNI_ALI_NOT_GOLDEN_AGE'	),
		('REQSET_CVS_SONNI_ALI_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_SONNI_ALI_HAPPY',		'REQUIRES_AT_WAR_AND_HAS_MET'		),
		('REQSET_CVS_SONNI_ALI_GOLDEN_AGE',	'REQUIRES_PLAYER_HAS_GOLDEN_AGE'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,						Inverse	)
VALUES	('REQ_CVS_SONNI_ALI_NOT_GOLDEN_AGE',	'REQUIREMENT_PLAYER_HAS_GOLDEN_AGE',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,	Value		)
VALUES	('REQ_CVS_SONNI_ALI_NOT_GOLDEN_AGE',	'Type',	'GOLDEN'	);
