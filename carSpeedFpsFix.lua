script_name("CarSpeedFpsFix")
script_author("akacross")

local mem = require 'memory'

function main()
    while not isSampAvailable() do wait(100) end

    while true do wait(100)
        if isCharInAnyCar(PLAYER_PED) then
            mem.write(mem.read(5993075, 4, false) + 4, mem.read(12045148, 4, false) - 10000, 4, false)
        end
    end
end