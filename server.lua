local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")


RegisterNetEvent("newchar:mm",function(nume,prenume,varsta,nationalitate,gender)
    local u = vRP.getUserId{source}
    if u then
        exports["oxmysql"]:execute("UPDATE vrp_user_identities SET firstname = @fname, name = @name, age = @age,gender = @gender,nation=@nation WHERE user_id = @id"
        ,{
            ["@id"] = u,
            ["@fname"] = nume,
            ["@name"] = prenume,
            ["@age"] = varsta,
            ["@gender"] = gender,
            ["@nation"] = nationalitate
        })
    end
end)

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    if first_spawn then
        TriggerClientEvent("showchar:mm",source)
    end
end)