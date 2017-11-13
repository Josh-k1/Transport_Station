device = {
	-- Stock --
	canAccess = function()
	 return true
	end,
	gui = {
		type = "ncurses",
		header = [[~ prototype v2.1 ~ ]],
		backgroundColour = {0.29, 0.69, 0.77},
		highlightColour = {0.0, 0.0, 1.0},
		buttons = {
			{
				name = "Developer mode",
				onClick = function()
					print("Button clicked!")
          --click this to view code required for mission
				end,

        name = "Demo mode",
        onClick = function()
            -- mini game possibly
        end,

				subButtons = {
					{
						name = "sourcecode",
						onClick = function()

						end,
					},
				},
			},
		},
	}
}
