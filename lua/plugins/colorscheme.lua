return {
	-- ash
	{
		"drewxs/ash.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("ash").setup({
				compile_path = vim.fn.stdpath("cache") .. "/ash",
				transparent = false, -- transparent background
				term_colors = false, -- terminal colors (e.g. g:terminal_color_x)
				no_italic = true, -- disable italics
				no_bold = false, -- disable bold
				no_underline = false, -- disable underlines

				-- override highlight groups [function/table]
				-- e.g. highlights = function(colors)
				--     return {
				--         Comment = { fg = colors.red },
				--         CmpBorder = { fg = colors.none },
				--     }
				-- end
				highlights = {},

				-- override style groups
				-- e.g. comments = { "italic", "bold" }
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
			})
		end,
	},
	-- no clown fiesta
	{
		"aktersnurra/no-clown-fiesta.nvim",
		lazy = false,
		priority = 1000,
	},
}
