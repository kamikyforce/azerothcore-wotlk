-- Grants players a large amount of gold on login to ensure
-- all vendor purchases feel effectively free, as requested.

local GOLD_THRESHOLD = 100000000 -- 10,000g in copper (10000 * 10000)
local GOLD_TOPUP     = 100000000 -- add 10,000g if below threshold

local function OnPlayerLogin(event, player)
    local currentMoney = player:GetCoinage()
    if currentMoney < GOLD_THRESHOLD then
        player:ModifyMoney(GOLD_TOPUP)
        player:SendBroadcastMessage("Bem-vindo! Você recebeu ouro suficiente para comprar sem se preocupar.")
    end
end

RegisterPlayerEvent(3, OnPlayerLogin) -- 3 = PLAYER_EVENT_ON_LOGIN

