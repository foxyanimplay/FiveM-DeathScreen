Citizen.CreateThread(function()

	while true do
		local playerId = PlayerId()
		local playerPed = PlayerPedId()
		local playerName = GetPlayerName(playerId)
		local killerId = nil
		local killerPed = nil
		local killerName = nil
		local killerEntity = nil
		local weaponHash = nil

		SetAudioFlag("LoadMPData", true)
		local scaleformMovie = RequestScaleformMovie("MP_BIG_MESSAGE_FREEMODE")

		if IsEntityDead(playerPed) and not alreadyDead then

			killerEntity, weaponHash = NetworkGetEntityKillerOfPlayer(playerId)
			killerPed = GetPedKiller(playerPed)
			killerId = NetworkGetPlayerIndexFromPed(killerEntity)
			if IsEntityAVehicle(killerEntity) then
				if not IsVehicleSeatFree(killerEntity, -1) then
					killerId = NetworkGetPlayerIndexFromPed(GetPedInVehicleSeat(killerEntity, -1))
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

			PlaySoundFrontend(-1, "ScreenFlash", "MissionFailedSounds", true)
			PlaySoundFrontend(-1, "Bed", "WastedSounds", true)
			StartScreenEffect("DeathFailMPDark", 0, 0)
			ShakeGameplayCam("DEATH_FAIL_IN_EFFECT_SHAKE", 1.0)

			while not HasScaleformMovieLoaded(scaleformMovie) do
				Citizen.Wait(0)
			end
			PushScaleformMovieFunction(scaleformMovie, "SHOW_SHARD_WASTED_MP_MESSAGE")
			BeginTextCommandScaleformString("STRING")
			AddTextComponentSubstringTextLabel("RESPAWN_W")
			EndTextCommandScaleformString()

			PushScaleformMovieFunction(scaleformMovie, "SHOW_SHARD_WASTED_MP_MESSAGE")
			BeginTextCommandScaleformString("STRING")
			if killerId == playerId then
				AddTextComponentSubstringTextLabel("DM_U_SUIC")
			elseif killerId ~= playerId and killerName ~= "**Invalid**" then
				AddTextComponentSubstringPlayerName(string.format(GetLabelText("DM_TICK1"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killerName .. "</C>")))
			else
				AddTextComponentSubstringTextLabel("DM_TK_YD1")
			end
			EndTextCommandScaleformString()

			PopScaleformMovieFunctionVoid()
			
			Citizen.Wait(1000)

			PlaySoundFrontend(-1, "TextHit", "WastedSounds", true)

			while IsEntityDead(PlayerPedId()) do
				DrawScaleformMovieFullscreen(scaleformMovie, 255, 255, 255, 255)
				Citizen.Wait(0)
			end

			StopScreenEffect("DeathFailMPDark")
			StopGameplayCamShaking()

			alreadyDead = true

		end

		if not IsEntityDead(playerPed) then
			alreadyDead = false
		end
		Citizen.Wait(1)
	end
end)

RegisterNetEvent("huyax:deathscreen:showNotification")
AddEventHandler("huyax:deathscreen:showNotification", function(id, target, killer)
	if target ~= GetPlayerName(PlayerId()) then
		local text = nil
		if id == 0 then
			text = GetLabelText("DM_O_SUIC"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. target .. "</C>")
		elseif id == 1 then
			text = GetLabelText("TICK_KILL"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. killer .. "</C>"):gsub("~a~", "<C>" .. target .. "</C>")
		else
			text = GetLabelText("TICK_DIED"):gsub("~a~~HUD_COLOUR_WHITE~", "<C>" .. target .. "</C>")
		end
		SetNotificationTextEntry("STRING")
		AddTextComponentSubstringPlayerName(text)
		DrawNotification(true, true)
	end
end)
