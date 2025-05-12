local scripts = {
    [2788229376] = "https://raw.githubusercontent.com/selenagomez25/dave/refs/heads/main/scritps/2788229376.lua", -- da hood
}

local gameId = game and game.PlaceId or 0
local scriptUrl = scripts[gameId]

if scriptUrl then
    local success, result = pcall(function()
        return game:HttpGet(scriptUrl)
    end)
    if success then
        local loadedFunc, err = loadstring(result)
        if loadedFunc then
            loadedFunc()
        else
            warn("failed to load: " .. tostring(err))
        end
    else
        warn("failed ot fetch from url: " .. tostring(result))
    end
else
    warn("no scsript for game id: " .. tostring(gameId))
end
