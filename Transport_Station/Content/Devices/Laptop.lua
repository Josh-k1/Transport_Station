device = {
	-- Stock --
	canAccess = function()
	 return true
	end,
	gui = {
		type = "ncurses",
		header = [[~ SHA Orga workstation v2.1 ~ ]],
		backgroundColour = {0.29, 0.69, 0.77},
		highlightColour = {0.0, 0.0, 1.0},
		buttons = {
			{
				name = "Please click this button...",
				onClick = function()
					print("Button clicked!")
				end,
				subButtons = {
					{
						name = "SuperDuperPlans.txt",
						onClick = function()
								RunMissionCommand([[Mission.SendData(mission.devices.Laptop, mission.characters.joe, mission.data.Documents)]])
						end,
					},
					{
						name = "Door keypass",
						onClick = function()
						--	RunMissionCommand([[Mission.CompleteObjective(mission.objectives.hackthecomputer]])
							RunMissionCommand([[Doors.AssignKeyToCharacter("rootkey", mission.characters.joe)]])

						end,
					},
				},
			},
		},
	}
}
