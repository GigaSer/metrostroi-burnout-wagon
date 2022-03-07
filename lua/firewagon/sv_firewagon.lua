util.AddNetworkString("FuckMyRandomWagonByFire")

local function igniteRequestReceiver(contentLength, ply)
    local poorTrain = ply:GetTrain()
    if poorTrain == nil then
        ply:ChatPrint("Поджигать нечего")
        return
    end
    poorTrain:UpdateWagonList()
    local randomWagon = poorTrain.WagonList[math.random(0, poorTrain:GetWagonCount())]
    
    print(randomWagon:GetWagonNumber())
    sound.Play( "phx/explode00.wav", randomWagon:GetPos(), 180, 100, 1)
end

net.Receive("FuckMyRandomWagonByFire", igniteRequestReceiver)

print("server firewagon enable")