local zadnjiSat, zadnjaMinuta = -1, -1

RegisterNetEvent("a_realtime:postaviVrijeme")
AddEventHandler("a_realtime:postaviVrijeme", function(sat, minuta)
    if sat ~= zadnjiSat or minuta ~= zadnjaMinuta then
        NetworkOverrideClockTime(sat, minuta, 0)
        zadnjiSat, zadnjaMinuta = sat, minuta
    end
end)

Citizen.CreateThread(function()
    while true do
        ClearOverrideWeather()
        NetworkOverrideClockTime(zadnjiSat, zadnjaMinuta, 0)
        Citizen.Wait(1000) 
    end
end)
