/*
	Agenda
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,						Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ASKIYA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description							)
VALUES 	('AGENDA_CVS_ASKIYA',	'LOC_AGENDA_CVS_ASKIYA_NAME',	'LOC_AGENDA_CVS_ASKIYA_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,					Name,							Description							)
VALUES	('TRAIT_AGENDA_CVS_ASKIYA',	'LOC_AGENDA_CVS_ASKIYA_NAME',	'LOC_AGENDA_CVS_ASKIYA_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_ASKIYA',	'TRAIT_AGENDA_CVS_ASKIYA'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType			)
VALUES 	('LEADER_CVS_ASKIYA',	'AGENDA_CVS_ASKIYA'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_ASKIYA',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_ASKIYA',	'AGENDA_TECHNOPHILE'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_ASKIYA',	'AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ASKIYA',	'AGENDA_MODIFIER_CVS_ASKIYA_HAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId		)
VALUES	('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ASKIYA_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ASKIYA_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ASKIYA_HAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ASKIYA_HAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'InitialValue',					-7													),
		('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'ReductionTurns',				7													),
		('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'ReductionValue',				-1													),
		('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ASKIYA_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ASKIYA_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ASKIYA_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_ASKIYA_HAPPY',	'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_ASKIYA_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ASKIYA_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ASKIYA_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ASKIYA_HAPPY'				);	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_ASKIYA_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ASKIYA_UNHAPPY',	'REQUIRES_MET_30_TURNS_AGO'			),
		('REQSET_CVS_ASKIYA_UNHAPPY',	'REQUIRES_HAS_LOW_SCIENCE'			),
		('REQSET_CVS_ASKIYA_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ASKIYA_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_ASKIYA_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'			),
		('REQSET_CVS_ASKIYA_HAPPY',		'REQUIRES_HAS_HIGH_STANDING_ARMY'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_ASKIYA_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ASKIYA_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);
		

