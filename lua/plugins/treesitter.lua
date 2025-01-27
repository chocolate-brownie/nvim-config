-- Customize Treesitter

---@type LazySpec
return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			indent = { enable = true },
			ensure_installed = { "c", "lua" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					settings = {
						-- C-specific settings
						TabWidth = 4,
						UseTabs = true,
						IndentWidth = 4,
					},
				},
			},
		},
	},
}
