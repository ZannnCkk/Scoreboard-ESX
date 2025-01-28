


local function Scoceboard(jumlahJob)
    lib.registerContext({
        id = 'Scoceboard',
        title = 'Scoceboard Menu',
        menu = 'menu',
        options = {
            {
                title = 'Police : '..jumlahJob.police,
                disabled = true
            },
            {
                title = 'Ambulance : '..jumlahJob.ambulance,
                disabled = true
            },
            {
                title = 'Mechanic : '..jumlahJob.mechanic,
                disabled = true
            }, 
            {
                title = 'Warga : '..jumlahJob.unemployed,
                disabled = true
            },
        }
    })
    lib.showContext('Scoceboard')
    
end



local keybind = lib.addKeybind({
    name = 'open_f5_menu',
    description = 'F5 Untuk Membuka Menu Scoceboard',
    defaultKey = 'F5', 
    onPressed = function()
        ESX.TriggerServerCallback('Zaaa:scoceboard', function(jumlahJob)
            Scoceboard(jumlahJob)
        end)
    end
})

