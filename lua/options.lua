require("nvchad.options")
-- Add custom options here!
local o = vim.o

-- Indentation settings (globally)
vim.opt.tabstop = 4 -- Size of a hard tabstop (ts)
vim.opt.shiftwidth = 4 -- Size of an indentation (sw)
vim.opt.expandtab = true -- Always uses spaces instead of tab characters (et)
vim.opt.softtabstop = 4 -- Size of a soft tabstop (sts)
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Do smart indenting when starting a new line

-- UI settings
o.cursorlineopt = "both"
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#262626' })
vim.wo.cursorcolumn = false

-- 42 School header configuration
vim.g.user42 = "mgodawat" -- Your 42 login
vim.g.mail42 = "mgodawat@student.42.fr" -- Your 42 email

-- Enable syntax highlighting and filetype detection
-- vim.cmd("syntax on")
-- vim.cmd("filetype plugin indent on")

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
