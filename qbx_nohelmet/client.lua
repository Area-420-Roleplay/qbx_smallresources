-- No Helmet In Bike
CreateThread(function()
    local wasOnBike = false

    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local isOnBike = IsPedOnAnyBike(ped)

        if isOnBike and not wasOnBike then
            SetPedConfigFlag(ped, 35, false) -- Disable player wearing helmet randomly
        end

        wasOnBike = isOnBike
    end
end)