-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.python" },
	-- { import = "astrocommunity.pack.cpp" },
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.utility.hover-nvim" },
	{ import = "astrocommunity.scrolling.mini-animate" },

	-- Colorschemes
	{ import = "astrocommunity.colorscheme.gruvbox-nvim" },
	{ import = "astrocommunity.colorscheme.solarized-osaka-nvim" },
	{ import = "astrocommunity.colorscheme.vscode-nvim" },
	-- import/override with your plugins folder
}
