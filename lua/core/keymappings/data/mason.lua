return {
	groups = {
		{
			whichkey = true,
			prefix = "<leader>c",
			name = "+Code",
			mappings = {
				{
					modes = { "n" },
					key = "<leader>cM",
					cmd = "<cmd>Mason<cr>",
					opt = {
						desc = "Open Mason",
					},
				},
			},
		},
	},
}
