return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				palette = {
					-- Override the builtin palette per variant
					-- moon = {
					--     base = '#18191a',
					--     overlay = '#363738',
					-- },
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})
		end,
	},

	-- Lackluster theme

	{
		"slugbyte/lackluster.nvim",
		name = "lackluster",
		config = function()
			local lackluster = require("lackluster")
			local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9

			-- !must called setup() before setting the colorscheme!
			lackluster.setup({
				tweak_syntax = {
					string = "default",
					string_escape = "default",
					comment = "default",
					builtin = "default", -- builtin modules and functions
					type = "default",
					keyword = "default",
					keyword_return = "default",
					keyword_exception = "default",
				},
				tweak_background = {
					normal = "none", -- main background
					-- normal = 'none',    -- transparent
					-- normal = '#a1b2c3',    -- hexcode
					-- normal = color.green,    -- lackluster color
					telescope = "none", -- telescope
					menu = "none", -- nvim_cmp, wildmenu ... (bad idea to transparent)
					popup = "none", -- lazy, mason, whichkey ... (bad idea to transparent)
				},
			})
		end,
	},
}
