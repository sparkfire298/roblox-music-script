local s = {
	15542068472, 
	15041076482,
	-- add more ids here
}

local function play(songId)

	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://" .. songId
	sound.Parent = game.Workspace
	sound:Play()

	sound.Ended:Wait()
	sound:Destroy()
end

local function start()
	wait(5)
	for i = 1, #s, 2 do
		play(s[i])
	end
end

start()
