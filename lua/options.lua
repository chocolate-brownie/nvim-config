require "nvchad.options"

-- Add custom options here!

local o = vim.o

-- UI settings
o.cursorlineopt = "both" -- Enable highlighting of both cursor line and column
vim.wo.number = true -- Show line numbers
vim.wo.relativenumber = true -- Show relative line numbers
vim.wo.cursorline = true -- Highlight the current line
vim.wo.cursorcolumn = false -- Highlight the current column

-- 42 School header configuration
vim.g.user42 = "mgodawat" -- Your 42 login
vim.g.mail42 = "mgodawat@student.42.fr" -- Your 42 email

-- C programming settings
vim.bo.tabstop = 4 -- Set tab width to 4 spaces
vim.bo.shiftwidth = 4 -- Indent using 4 spaces
vim.bo.softtabstop = 4 -- Use 4 spaces when pressing Tab
vim.bo.expandtab = true -- Convert tabs to spaces
vim.bo.autoindent = true -- Enable auto-indentation
vim.bo.smartindent = true -- Enable smart indentation

-- Enable syntax highlighting and filetype detection
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

-- Searching
o.ignorecase = true -- Case-insensitive search
o.smartcase = true -- Case-sensitive if uppercase is used in search
o.incsearch = true -- Show matches as you type
o.hlsearch = true -- Highlight search matches

-- Code folding
o.foldmethod = "indent" -- Fold based on indentation
o.foldenable = false -- Disable folding by default
o.foldlevel = 99 -- Open all folds by default

-- Display settings
o.colorcolumn = "80" -- Highlight the 80th column for line length adherence
o.signcolumn = "yes" -- Always show the sign column

-- Backups and swap files
o.swapfile = false -- Disable swap files
o.backup = false -- Disable backup files
o.undofile = true -- Enable undo files

-- Key mappings (optional)
-- Map `F1` to insert the 42 header
vim.api.nvim_set_keymap("n", "<F1>", ":Stdheader<CR>", { noremap = true, silent = true })

-- Enable mouse support
o.mouse = "a"

-- 42-specific plugins (if not set elsewhere)
-- vim.cmd([[
--   autocmd BufWritePre *.c,*.cpp :CFormatter42 -- Format before saving
-- ]])

