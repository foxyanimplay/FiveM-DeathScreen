local deathTypes = {
	--table layout: [hash] = {"pl1 killed pl2", "pl1 killed you", "you killed pl2"}
	[GetHashKey("VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_PLANE_ROCKET")] = "DM_TK_BOMB1",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_BULLET")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_HUNTER")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_LASER")] = "0x7ABAA601",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_LAZER")] = "0x7ABAA601",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_SAVAGE")] = "DM_TK_KNIFE1",
	[GetHashKey("VEHICLE_WEAPON_RUINER_BULLET")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")] = "DM_TK_BOMB1",
	[GetHashKey("VEHICLE_WEAPON_TANK")] = "DM_TK_BOMB1",
	[GetHashKey("VEHICLE_WEAPON_TURRET_BOXVILLE")] = "DM_TICK1",
	[GetHashKey("VEHICLE_WEAPON_TURRET_INSURGENT")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_TURRET_LIMO")] = "DM_TK_PISTOL1",
	[GetHashKey("VEHICLE_WEAPON_TURRET_TECHNICAL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_ADVANCEDRIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_AIR_DEFENCE_GUN")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_AIRSTRIKE_ROCKET")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_ANIMAL")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_APPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_ASSAULTRIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_ASSAULTSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_ASSAULTSMG")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_AUTOSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_BARBED_WIRE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_BAT")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_BATTLEAXE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_BOTTLE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_BULLPUPRIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_BULLPUPSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_BZGAS")] = "DM_TK_GAS1",
	[GetHashKey("WEAPON_CARBINERIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_COMBATMG")] = "0x7ABAA601",
	[GetHashKey("WEAPON_COMBATPDW")] = "0x7ABAA601",
	[GetHashKey("WEAPON_COMBATPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_COMPACTLAUNCHER")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_COMPACTRIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_COUGAR")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_CROWBAR")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_DAGGER")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_DBSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_DROWNING")] = "DM_TICK1",
	[GetHashKey("WEAPON_DROWNING_IN_VEHICLE")] = "DM_TICK1",
	[GetHashKey("WEAPON_EXPLOSION")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_FALL")] = "DM_TICK1",
	[GetHashKey("WEAPON_FIRE")] = "DM_TK_TORCH1",
	[GetHashKey("WEAPON_FIREWORK")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_FLARE")] = "DM_TK_TORCH1",
	[GetHashKey("WEAPON_FLAREGUN")] = "DM_TK_TORCH1",
	[GetHashKey("WEAPON_GOLFCLUB")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_GRENADE")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_GRENADELAUNCHER")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_HAMMER")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_HATCHET")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_HEAVYPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_HEAVYSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_HEAVYSNIPER")] = "DM_TK_SNIPE1",
	[GetHashKey("WEAPON_HELI_CRASH")] = "DM_TK_VK1",
	[GetHashKey("WEAPON_HIT_BY_WATER_CANNON")] = "DM_TICK1",
	[GetHashKey("WEAPON_HOMINGLAUNCHER")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_KNIFE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_KNUCKLE")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_MACHETE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_MACHINEPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MARKSMANPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MARKSMANRIFLE")] = "DM_TK_ARIFLE1",
	[GetHashKey("WEAPON_MG")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MICROSMG")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MINIGUN")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MINISMG")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_MOLOTOV")] = "DM_TK_TORCH1",
	[GetHashKey("WEAPON_MUSKET")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_NIGHTSTICK")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_PASSENGER_ROCKET")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_PETROLCAN")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_PIPEBOMB")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_PISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_PISTOL50")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_POOLCUE")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_PROXMINE")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_PUMPSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_RAILGUN")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_RAMMED_BY_CAR")] = "DM_TK_VK1",
	[GetHashKey("WEAPON_REMOTESNIPER")] = "DM_TK_SNIPE1",
	[GetHashKey("WEAPON_REVOLVER")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_RPG")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_RUN_OVER_BY_CAR")] = "DM_TK_VK1",
	[GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = "DM_TK_SHOT1",
	[GetHashKey("WEAPON_SMG")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_SMOKEGRENADE")] = "DM_TICK1",
	[GetHashKey("WEAPON_SNIPERRIFLE")] = "DM_TK_SNIPE1",
	[GetHashKey("WEAPON_SNSPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_SPECIALCARBINE")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_STICKYBOMB")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_STINGER")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_STUNGUN")] = "DM_TK_MELEE1",
	[GetHashKey("WEAPON_SWITCHBLADE")] = "DM_TK_KNIFE1",
	[GetHashKey("WEAPON_VEHICLE_ROCKET")] = "DM_TK_BOMB1",
	[GetHashKey("WEAPON_VINTAGEPISTOL")] = "DM_TK_PISTOL1",
	[GetHashKey("WEAPON_WRENCH")] = "DM_TK_MELEE1"
}

Citizen.CreateThread(function()
	while true do
		local playerId = PlayerId()
		local playerPed = PlayerPedId()
		local playerName = GetPlayerName(playerId)
		local killerId = nil
		local killerPed = nil
		local killerName = nil
		local killerEntity = nil
		local causeHash = nil
		local weaponHash = nil
		local deathReason = nil

		SetAudioFlag("LoadMPData", true)
		RequestScriptAudioBank("mp_wasted", 1)
		local scaleformMovie = RequestScaleformMovie("MP_BIG_MESSAGE_FREEMODE")

		if IsEntityDead(playerPed) then

			killerEntity, weaponHash = NetworkGetEntityKillerOfPlayer(playerId)
			causeHash = GetPedCauseOfDeath(playerPed)
			killerPed = GetPedKiller(playerPed)
			killerId = NetworkGetPlayerIndexFromPed(killerEntity)
			if IsEntityAVehicle(killerEntity) then
				if not IsVehicleSeatFree(killerEntity, -1) then
					killerId = NetworkGetPlayerIndexFromPed(GetPedInVehicleSeat(killerEntity, -1))
					killerEntity = GetPlayerPed(killerId)
				end
			end
			killerName = GetPlayerName(killerId)

			if killerId == playerId then
				TriggerServerEvent('huyax:deathscreen:playerDied', 0, 0)
			elseif killerId ~= playerId and killerName ~= "**Invalid**" then
				TriggerServerEvent('huyax:deathscreen:playerDied', 1, killerName)
			else
				TriggerServerEvent('huyax:deathscreen:playerDied', 2, 0)
			end

			StartScreenEffect("DeathFailMPDark", 0, 0)
			ShakeGameplayCam("DEATH_FAIL_IN_EFFECT_SHAKE", 1.0)

			while not HasScaleformMovieLoaded(scaleformMovie) do
				Citizen.Wait(0)
			end
			if killerId and killerId ~= playerId and killerName ~= "**Invalid**" then
				CreateCinematicShot(-1096069633, 2000, 0, killerPed)
			end
			PushScaleformMovieFunction(scaleformMovie, "SHOW_SHARD_WASTED_MP_MESSAGE")
			BeginTextCommandScaleformString("STRING")
			AddTextComponentSubstringTextLabel("RESPAWN_W")
			EndTextCommandScaleformString()

			if killerName ~= "**Invalid**" then
				PushScaleformMovieFunction(scaleformMovie, "SHOW_SHARD_WASTED_MP_MESSAGE")
				BeginTextCommandScaleformString("STRING")
				if killerId == playerId then
					AddTextComponentSubstringTextLabel("DM_U_SUIC")
				elseif killerId ~= playerId and killerName ~= "**Invalid**" then

					if deathTypes[causeHash] == nil or deathTypes[causeHash] == "NULL" then
						if deathTypes[weaponHash] == nil or deathTypes[weaponHash] == "NULL" then
							deathReason = GetLabelText("DM_TICK1"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killerName .. "</C>")
						else
							deathReason = GetLabelText(deathTypes[weaponHash]):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killerName .. "</C>")
						end
					else
						deathReason = GetLabelText(deathTypes[causeHash]):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killerName .. "</C>")
					end
						
					AddTextComponentSubstringPlayerName(deathReason)

				end
				EndTextCommandScaleformString()
			end

			PopScaleformMovieFunctionVoid()
			
			Citizen.Wait(750)

			PlaySoundFrontend(-1, "MP_Flash", "WastedSounds", true)

			Citizen.Wait(250)

			while IsEntityDead(PlayerPedId()) do
				DrawScaleformMovieFullscreen(scaleformMovie, 255, 255, 255, 255)
				Citizen.Wait(0)
			end

			if IsCinematicShotActive(-1096069633) then
				StopCinematicShot(-1096069633)
			end
			StopScreenEffect("DeathFailMPDark")
			StopGameplayCamShaking()
			PlaySoundFrontend(-1, "MP_Impact", "WastedSounds", true)

		end

		Citizen.Wait(0)
	end
end)

RegisterNetEvent("huyax:deathscreen:showNotification")
AddEventHandler("huyax:deathscreen:showNotification", function(id, target, killer)
	local text = nil
	if killer == GetPlayerName(PlayerId()) and id == 1 then
		text = GetLabelText("DM_TICK2"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killer .. "</C>"):gsub("~a~", "<C>" .. target .. "</C>")
	elseif target == GetPlayerName(PlayerId()) then
		if id == 0 then
			text = GetLabelText("DM_U_SUIC")
		elseif id == 1 then
			text = GetLabelText("DM_TICK1"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killer .. "</C>")
		else
			text = GetLabelText("DM_TK_YD1")
		end
	elseif target ~= GetPlayerName(PlayerId()) then
		if id == 0 then
			text = GetLabelText("DM_O_SUIC"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. target .. "</C>")
		elseif id == 1 then
			text = GetLabelText("TICK_KILL"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killer .. "</C>"):gsub("~a~", "<C>" .. target .. "</C>")
		else
			text = GetLabelText("TICK_DIED"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. target .. "</C>")
		end
	end
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(true, false)
end)
