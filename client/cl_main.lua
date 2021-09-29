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

	--[[ TriggerEvent('chat:addMessage', {
		args = { "^6[SYSTEM]", " ^1You have been revived by an admin."}
	}) ]]--

	notify("~g~You have been revived by an admin.")
end)

TriggerEvent('chat:addSuggestion', '/revive', 'Admin Revive', {
    { name = "ID", help = "Target Player ID" }
})