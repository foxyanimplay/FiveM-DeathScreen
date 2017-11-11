RegisterServerEvent('huyax:deathscreen:playerDied')
AddEventHandler('huyax:deathscreen:playerDied',function(id, killer, reason)
	TriggerClientEvent('huyax:deathscreen:showNotification', -1, id, GetPlayerName(source), killer)
end)
