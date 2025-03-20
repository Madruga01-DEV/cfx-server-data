RegisterCommand("do", function(source , args, rawCommand)
	local time = os.date('%H:%M')
    local text = table.concat(args, ' ')
    local icon = 'icons'
    text = string.sub(text,1,Config.MaxLength)
    TriggerClientEvent('3dme:do', -1, text, source, icon)
	TriggerClientEvent('chat:do', -1, source, text, time)
end, false)































--
Citizen.CreateThread(function()
	if GetCurrentResourceName() ~= "bulgar_3ddo" then -- There will be problems with the script if the name is changed...
		print("^1=====================================")
		print("^1SCRIPT NAME OTHER THAN ORIGINAL")
		print("^1THERE WILL/MAY BE PROBLEMS WITH THE SCRIPT IF THE NAME IS CHANGED")
		print("^1CHANGE NAME TO: ^2bulgar_3ddo^1")
		print("^1=====================================^0")
	end
end)
--
--
AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end
	print('^6 '..resourceName..'^2 Successfully Loaded ^7')
	print('^1 Developed by BulgaR ^7')
	print('^7 If you got any question or require support join:^5 https://discord.gg/dcyY2e5kb3 ^7')
end)
--