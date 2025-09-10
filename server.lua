Citizen.CreateThread(function()
    while true do
        local sat = os.date("%H")  
        local minuta = os.date("%M") 

        sat = tonumber(sat)
        minuta = tonumber(minuta)

        TriggerClientEvent("a_realtime:postaviVrijeme", -1, sat, minuta)

        Citizen.Wait(60000) 
    end
end)
