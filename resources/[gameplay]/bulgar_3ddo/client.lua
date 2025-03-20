liczbaDo = 0

RegisterNetEvent("3dme:do")
AddEventHandler("3dme:do", function(text, source, icon)
    local playerId = GetPlayerFromServerId(source)
    local isDisplayingDo = true
    liczbaDo = liczbaDo + 1
    icon = 'user'
    Citizen.CreateThread(function()
        while isDisplayingDo do
            Citizen.Wait(0)
            local htmlString = ""
            local sourceCoords = GetEntityCoords(GetPlayerPed(playerId))
            local nearCoords = GetEntityCoords(PlayerPedId())
            local distance = Vdist2(sourceCoords, nearCoords)
            if distance < 25.0 then
                local onScreen, xxx, yyy =
                    GetHudScreenPositionFromWorldPosition(
                        sourceCoords.x + Config.CoordsX,
                        sourceCoords.y + Config.CoordsY,
                        sourceCoords.z + Config.CoordsZ)
                htmlString =
                    htmlString ..
                    '<span style="position: absolute; left: ' ..
                    xxx * 100 ..
                    "%;top: " .. yyy * 100 .. '%;"><div class="do-container"><div class="icon-container"><span style="color: #4d66f1;"><i class="fas fa-'..icon..' fa-lg  "></i></span></div><div class="text-container"><b> </b>' .. text .. "</div></div></span>"
            end
            if lasthtmlString ~= htmlString then

                        SendNUIMessage({
                            toggleDo = true,
                            html = htmlString
                        })
                        lasthtmlString = htmlString
            end
        end
        if isDisplayingDo == false then
            SendNUIMessage({toggleDo = false})
        end
    end)
    Citizen.CreateThread(function()
        Citizen.Wait(Config.Duration)
        liczbaDo = liczbaDo -1
        isDisplayingDo = false
        SendNUIMessage({toggleDo = false})
    end)
end)