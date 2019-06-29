-----------------------------------------------
-- ASKIYA FUNCTIONS
-----------------------------------------------

print ("Askiya Functions initialized")

-----------------------------------------------
-- UTILITIES
-----------------------------------------------

-- Credits: Chrisy of course
function C15_ValidTrait(sTrait)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end

function GetRandom(iLower, iUpper, sReason)
	return Game.GetRandNum((iUpper + 1) - iLower, sReason) + iLower
end

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_LEADER_CVS_ASKIYA_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)

----------------------------------------------
-- FUNCTION CPG_Askiya_AdoptReligionOnConquer
-- Effect: Conquered cities immediately adopt to your founded Religion
-- Authors: ChimpanG
-----------------------------------------------

function CPG_Askiya_AdoptReligionOnConquer(newPlayerID, oldPlayerID, newCityID, iX, iY)

	if tTraitPlayers[newPlayerID] then -- Check player trait

		local pPlayer = Players[newPlayerID]
		local pOldPlayer = Players[oldPlayerID]
		local pCities = pPlayer:GetCities()
		local pCity = pCities:FindID(newCityID)

		local pReligion = pPlayer:GetReligion()
		local iReligion = pReligion:GetReligionTypeCreated()
		print ("iReligion:", iReligion)

		if (iReligion ~= -1) then
			local pCityReligion = pCity:GetReligion()
			pCityReligion:SetAllCityToReligion(iReligion)

			if pPlayer:IsHuman() then
				Game.AddWorldViewText(pPlayer, Locale.Lookup("[COLOR_FLOAT_FAITH]City Converted[ENDCOLOR]", 0), pCity:GetX(), pCity:GetY(), 0)
			end
			if pOldPlayer:IsHuman() then
				Game.AddWorldViewText(pOldPlayer, Locale.Lookup("[COLOR_FLOAT_MILITARY]City Converted[ENDCOLOR]", 0), pCity:GetX(), pCity:GetY(), 0)
			end
		end
	end
end

GameEvents.CityConquered.Add(CPG_Askiya_AdoptReligionOnConquer);