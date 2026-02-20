return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"astro",
				"bash",
				"c",
				"cmake",
				"cpp",
				"css",
				"fish",
				"gitignore",
				"go",
				"graphql",
				"http",
				"java",
				"json",
				"lua",
				"php",
				"rust",
				"scss",
				"sql",
				"svelte",
				"vim",
				"vimdoc",
			},

			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
