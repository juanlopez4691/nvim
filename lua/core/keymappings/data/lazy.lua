return {
	groups = {
		{
			whichkey = true,
			prefix = "<leader>P",
			name = "+Packages",
			mappings = {
				{
					modes = { "n" },
					key = "<leader>Pl",
					cmd = "<cmd>Lazy<cr>",
					opt = {
						desc = "Open Lazy",
					},
				},
			},
		},
	},
}
