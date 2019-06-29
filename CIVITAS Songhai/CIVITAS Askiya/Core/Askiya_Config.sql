/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_SONGHAI', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SONGHAI_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SONGHAI', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SONGHAI', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ASKIYA', -- LeaderType
		'LOC_LEADER_CVS_ASKIYA_NAME', -- LeaderName
		'ICON_LEADER_CVS_ASKIYA', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ASKIYA' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 			LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
VALUES 	('Players:Expansion2_Players',	'CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_ASKIYA',	'UNIT_CVS_SONGHAI_UU',		'ICON_UNIT_CVS_SONGHAI_UU',		'LOC_UNIT_CVS_SONGHAI_UU_NAME',		'LOC_UNIT_CVS_SONGHAI_UU_DESCRIPTION',		10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_SONGHAI', 'LEADER_CVS_ASKIYA', 	'BUILDING_CVS_SONGHAI_UI',	'ICON_BUILDING_CVS_SONGHAI_UI',	'LOC_BUILDING_CVS_SONGHAI_UI_NAME', 'LOC_BUILDING_CVS_SONGHAI_UI_DESCRIPTION', 	20			);