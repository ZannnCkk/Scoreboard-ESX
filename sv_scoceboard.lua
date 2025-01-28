
local jumahJob = {
    police = 0,
    ambulance = 0,
    mechanic = 0,
    unemployed = 0,
}

local function updateJob()
    local allPlayer = ESX.GetPlayers()
    jumahJob = { police = 0, ambulance = 0, mechanic = 0, unemployed = 0}

    for k, v in ipairs(allPlayer) do
        local xPlayer = ESX.GetPlayerFromId(v)

        if xPlayer then
            local namaJob = xPlayer.getJob().name
            if jumahJob[namaJob] ~= nil then
                jumahJob[namaJob] = jumahJob[namaJob] + 1
            end
        end

    end
end

ESX.RegisterServerCallback('Zaaa:scoceboard', function(source, cb)
    updateJob()
    cb(jumahJob)
end)


AddEventHandler('esx:playerLoaded', function(player, xPlayer, isNew)
    updateJob()
end)

AddEventHandler('esx:playerDropped', function(playerId, reason)
    updateJob()
end)

AddEventHandler('esx:setJob', function(job, lastJob)
    updateJob()
end)





