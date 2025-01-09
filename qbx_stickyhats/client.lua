-- Hat Stay ON!
CreateThread(function()
    local lastped = PlayerPedId()
    SetPedCanLosePropsOnDamage(lastped, false, 0) -- Initial call to set the flag

    while true do
        Wait(5000) -- Increased wait time to further reduce CPU usage
        local ped = PlayerPedId()
        if ped ~= lastped then
            lastped = ped
            SetPedCanLosePropsOnDamage(ped, false, 0)
        end
    end
end)