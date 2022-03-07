local function cmdHandler()
    net.Start("FuckMyRandomWagonByFire")
    net.SendToServer()
end

concommand.Add("ignitemywagon", cmdHandler, nil, "Burn out your random wagon in train you seat", FCVAR_CHEAT)

print("client firewagon enable")