return {
	groups = {
		{
			whichkey = true,
			prefix = "<leader>K",
			name = "+Config",
			mappings = {
				{
					modes = { "n" },
					key = "<leader>Kf",
					cmd = "<cmd>lua _G.Settings.format_on_save = ToggleSetting(_G.Settings.format_on_save)<cr>",
					opt = {
						desc = "Toggle format on save",
					},
				},
			},
		},
	},
}