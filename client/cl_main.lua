function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end

RegisterNetEvent('revive')
AddEventHandler('revive', function()
	local player = PlayerPedId()
	SetEntityHealth(player, 200)
    ClearPedTasksImmediately(player)

	if Config.TNotify then
		exports['t-notify']:Alert({
			style = 'info', 
			message = 'You have been revived by an admin.',
			duration = 3500
		})
	end

	if Config.TNotify == false then
		notify("~p~You have been revived by an admin.")
	end

end)

TriggerEvent('chat:addSuggestion', '/revive', 'Admin Revive', {
    { name = "ID", help = "[Optional] Target Player ID" }
})