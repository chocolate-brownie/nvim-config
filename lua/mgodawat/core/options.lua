-- Making the explorer to use the tree style navigation
vim.cmd("let g:netrw_liststyle = 3")

-- vim keybind settings
local opt = vim.opt

opt.relativenumber = true  -- Show relative line numbers
opt.number = true          -- Show absolute line numbers
opt.cursorline = true      -- Highlight the current cursor line
opt.textwidth = 80
opt.colorcolumn = "80"

opt.tabstop = 4            -- Number of spaces a <Tab> counts for
opt.shiftwidth = 4         -- Number of spaces used for each step of (auto)indent
opt.expandtab = true       -- Use spaces instead of tabs
opt.autoindent = true      -- Auto-indent new lines
opt.smartindent = true     -- Enable smart indentation
opt.wrap = false           -- Line wrapping

opt.backspace = { 'indent', 'eol', 'start' }  -- Make backspace behave as expected
opt.clipboard:append("unnamedplus")

opt.cursorline = true      -- Highlight the current line
opt.encoding = 'utf-8'     -- Use UTF-8 encoding


opt.ignorecase = true      -- Ignore case when searching
opt.smartcase = true       -- If you include mixed case in your search, assume you want case-sesitive

-- Turn on terminal gui colors for some colorschemes to work properly. 
-- You have to use a true color terminal to work this
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Split window settings
opt.splitright = true
opt.splitbelow = true



