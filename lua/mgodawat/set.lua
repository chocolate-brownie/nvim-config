-- Disable the GUI cursor, making it consistent with terminal cursor
vim.opt.guicursor = ""

-- Enable line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tab-related options for consistent formatting
vim.opt.tabstop = 4         -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4     -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true    -- Use spaces instead of tabs

-- Enable smart indentation
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap file creation and backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Set undo directory and enable persistent undo
vim.opt.undodir = os.getenv("HOME").. "/.vim/undodir"
vim.opt.undofile = true

-- Search-related options
vim.opt.hlsearch = false    -- Do not highlight all search results
vim.opt.incsearch = true    -- Show search results as you type

-- Enable true color support
vim.opt.termguicolors = true

-- Scroll offset and sign column settings
vim.opt.scrolloff = 8       -- Keep 8 lines visible above and below the cursor
vim.opt.signcolumn = "yes"  -- Always show the sign column

-- Add '@-@' to 'isfname' option to treat it as part of a file name
vim.opt.isfname:append("@-@")

-- Set update time for swap file and CursorHold event
vim.opt.updatetime = 50

-- Highlight column at 80 characters for better readability
vim.opt.colorcolumn = "80"

-- Set the leader key to space
vim.g.mapleader = " "

-- Define jj as an alternative to ESC in insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })


