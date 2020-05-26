/*
	Localisation
	Credits: ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_SONNI_ALI_NAME",  "Sonni Ali"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_SONNI_ALI_UA_NAME",  	"By Fire And Sword"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_SONNI_ALI_UA_DESCRIPTION",		
	"During a [ICON_GLORY_GOLDEN_AGE] Golden Age, military units gain additional [ICON_STRENGTH] Combat Strength against units of civilizations not in a [ICON_GLORY_GOLDEN_AGE] Golden Age and earn [ICON_SCIENCE] Science equal to 50% of the [ICON_STRENGTH] Combat Strength of defeated units."	),

	("en_US",	"LOC_MODIFIER_CVS_SONNI_ALI_UA_GOLDEN_COMBAT_DESCRIPTION",  "+{1_Amount} Combat from Golden Age"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_SONNI_ALI_NAME",			"Siege of Djenne"	),
	("en_US", "LOC_AGENDA_CVS_SONNI_ALI_DESCRIPTION", 	"Respects civilizations at war with civilizations other than Songhai. Whilst in a golden age, sees those who are not as targets."	),

	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_SONNI_ALI_REASON_ANY",		"(You are at war.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SONNI_ALI_HAPPY",				"Sonni Ali respects your war efforts"	),

	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_SONNI_ALI_REASON_ANY",	"(You refuse to fight.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SONNI_ALI_UNHAPPY",			"Sonni Ali thinks you are weak"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_SONNI_ALI",  	
	"A new dawn awaits, Sonni Ali, first King of Songhai. By fire and sword, the time has come to forge the destiny of your kingdom. Show your people what it is to know glory as you conquer the horizon, and how your enemies shall tremble when they hear the thunderous sound of your cavalry. Rise up and heed a legacy that demands you claim what is rightfully yours."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_SONNI_ALI_ANY",
	"Stand easy traveller, you are in the presence of Sonni Ali. Who might you be?" ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_SONNI_ALI_ANY",
	"If you wish for a place to rest, I have a city nearby. You are welcome to visit it should you wish."	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_SONNI_ALI_ANY",
	"Certainly."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_SONNI_ALI_ANY",
	"If we are to build upon a foundation of trust, I would propose that we exchange information on our capital cities, would you agree?"	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_SONNI_ALI_HAPPY",
	"Speak freely."	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"You again..."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"I will accept your delegates, and I will welcome them personally."	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"No."	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"I have sent a delegation carrying supplies of baobab and benachin to be enjoyed among your court. I trust no harm will come of them, for your sake."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"Certainly, so long as you understand that they will adhere to Songhai law within my lands."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"Not at this time."	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"Our fight is not with you, but instead the monster that resides beyond your borders. Will you allow us free passage?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"I would be honored."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"You are no friend of Songhai."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"You have been a friend to Songhai for some time now. Would you receive us as friends of yours?"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"Excellent."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"Pity."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"Should we form an alliance, our enemies are weaker against us. What do you say?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_SONNI_ALI_ANY",
	"Tales of your victories travel far. The courage of your armies is something to be admired."	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_SONNI_ALI_ANY",
	"Be it by fear or ignorance, weak rulers seldom enjoy the spoils of war."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_SONNI_ALI_HAPPY",
	"I must remind you that trespassing in my lands will be treated as a declaration of war. Surely you do not want this?"	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"Trespassers in my lands may ask the dead what happens as a result of this, and if your troops do not heed this warning, I will be obliged to arrange the meeting."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_SONNI_ALI_HAPPY",
	"I will relay to my troops that they must keep their distance from your borders."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"I will move my troops for now. But remember, it is one's gaze that crosses the border first."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_SONNI_ALI_ANY",
	"Do you really presume that my troops call at your gates for any other reason than to destroy you? What a fool you are."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_SONNI_ALI_HAPPY",
	"You are right to assume that proximity to Songhai territory may bring economic value to your own cities, but I ask as friend, do not settle so close."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"If you continue to make a habit of settling your cities so close to my territory, you will soon find that they become my cities."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_SONNI_ALI_HAPPY",
	"My apologies. I must have misinterpreted how such an action would be met."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"Fine. Just know that in time you shall come to regret this."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_SONNI_ALI_HAPPY",
	"You may not see it now, but your cities will see economic prosperity in having mine in close proximity. Trust me."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"Something you should know about me is that I am not one to suffer demands. I am the one that makes them."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_SONNI_ALI_HAPPY",
	"Good deal."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"This deal is not in my favor, but I trust you will remember this the next time we trade."	),

	-- AI Rejects Deal (HAPPY)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_SONNI_ALI_HAPPY",
	"This will not suffice."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_SONNI_ALI_UNHAPPY",
	"Might I remind you who you're dealing with. Do not waste my time."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"The fool speaks. The wise man listens."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"In many contexts, the enemy of my enemy is my friend. But sometimes, the enemy of my enemy is... just another enemy. (Denounces You)."	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"I would rather die on my feet than live on my knees."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"I want your land, not your life, but if you resist, I'll take both."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_SONNI_ALI_ANY",
	"Very well. You've nothing I want. But the moment you find something that makes your life worth taking, expect me."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_SONNI_ALI_ANY",
	"Forgiveness is between you and your gods, for you shall find no mercy from me."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"If we must continue to fight, we will both end up with nothing. Let us lay down arms."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_SONNI_ALI_ANY",
	"Defeating me does not make you a hero, for it is the conquest of an ideology that places the crown atop one's brow. You have yet to find the tyrant within you required to rule."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_SONNI_ALI_ANY",
	"{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_SONNI_ALI_ANY}"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SONNI_ALI_QUOTE",		
	"It is one's gaze that crosses the border first."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SONNI_ALI_TITLE",		
	"Sonni Ali"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SONNI_ALI_SUBTITLE",		
	"King of Songhai"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SONNI_ALI_CHAPTER_CAPSULE_BODY",		
	"Sonni Ali's Songhai can be a formidable foe on the battlefield, especially during a Golden Age."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SONNI_ALI_CHAPTER_DETAILED_BODY",		
	"Sonni Ali will want to assemble an army immediately, using it to declare war so that he can begin racking up additional era score. He will want to use rivers to get the most out of specialty districts and set up trade networks with which to fund his armies. Entering a Golden Age will provide his units additional combat strength against those not in a Golden Age, as well as earning science from eliminating them, so this will be the best time to conquer cities, expand his empire and further his technological advancement. While a Scientific victory is always within Songhai's grasp, Sonni Ali is well-suited for a Domination victory, using the scientific benefits of the civ to amass technologically advanced armies that will conquer the world."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SONNI_ALI_CHAPTER_HISTORY_PARA_1",		
	"Sonni Ali Ber ruled the Songhai for thirty years (1464-1493). He was a brilliant military leader and strategist. Taking advantage of Mali's growing feebleness, Sunni led Songhai armies to conquer the wealthy city of Timbuktu, driving out the marauding Tuareg people who had taken over the city as Malinese power declined. He expanded his empire further west, gobbling up all Malinese land north of Jenne (a.k.a., Djenne). He was not unopposed in his expansion. Over the course of his reign he repelled assaults from the Mossi, Dogon, and Fulani."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SONNI_ALI_CHAPTER_HISTORY_PARA_2",		
	"In 1473 Ali Ber sought the greatest prize, the wealthy trading city of Jenne. Jenne was still a part of the Malinese Empire, and its people put up a stout defense. Unable to take the city by storm Ali Ber laid siege to it. The city held out stubbornly for seven years before capitulating."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SONNI_ALI_CHAPTER_HISTORY_PARA_3",		
	"The records of the day generally regard Ali Ber as an unstable tyrant, who was by turns generous and brutal, who ruled with an iron fist and who slaughtered and oppressed those he captured. There may be some exaggeration, as the Muslim scholars who recorded the histories disliked Ali Ber for the unorthodox form of Islam he practiced, apparently a kind of fusion between Islam and traditional Songhai religious observances."	);