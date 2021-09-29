RegisterCommand('revive', function(src, args)
    local target = args[1] and tonumber(args[1])

    TriggerClientEvent('revive', target)
end, true)