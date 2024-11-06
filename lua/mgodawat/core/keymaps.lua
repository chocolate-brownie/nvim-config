vim.g.mapleader = " "

local keymap = vim.keymap

--Keymapping for exiting insert mode by pressing 'jj'
keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

-- To clean the search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search hightlights" })

-- Incrementing/Decrementing numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment numbers" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement numbers" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in a new tab" })

-- Autocommand to automatically format C/C++ files using c_formatter_42 on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.c", "*.h", "*.cpp", "*.hpp" }, -- Add more extensions if needed
	command = "CFormatter42", -- This assumes the plugin defines this command
})
