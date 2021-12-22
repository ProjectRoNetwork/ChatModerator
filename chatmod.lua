--//Chat Logger\\--
local url = "" -- Discord Webhook URL

local http = game:GetService('HttpService')

game.Players.PlayerAdded:connect(function(plr)

	plr.Chatted:connect(function(msg)

		local data = {
			['username'] = plr.Name,
			['content'] = msg
		}

		local newdata = http:JSONEncode(data)

		http:PostAsync(url,newdata)

	end)

end)