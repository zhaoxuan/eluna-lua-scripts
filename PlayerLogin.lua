print(">>Script: PlayerLogin...Loading OK.")

-- 第一次登陆
local function OnPlayerFirstLogin(event, player)
    -- 四个大背包
    player:SendBroadcastMessage("第一次登陆游戏会有惊喜哦，请查看背包")
    player:AddItem(23162, 4)
    player:ModifyMoney(100 * 100 * 1000)
end

-- 每次登陆
local function OnPlayerLogin(event, player)
    local playerNmae = player:GetName()
    SendWorldMessage("污妖王："..playerNmae.." 上线了")
end


RegisterPlayerEvent(30, OnPlayerFirstLogin)
RegisterPlayerEvent(3, OnPlayerLogin)
