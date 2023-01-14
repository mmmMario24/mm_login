RegisterNetEvent("showchar:mm",function()
    SendNUIMessage({
        toggled = true
    })
    SetNuiFocus(true,true)
end)

RegisterNUICallback("action",function(data)
    if data.action == "newchar" then
        TriggerServerEvent("newchar:mm",data.nume,data.prenume,data.varsta,data.nationalitate,data.gender)
        SetNuiFocus(false,false)
    end
end)