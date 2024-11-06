return {
    -- Nvim-tree configuration
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function() 
            local nvimtree = require("nvim-tree")

            -- recommended settings from nvim tree documentation
            -- disable netrw at the very start of your init.lua
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            -- optionally enable 24-bit colour
            vim.opt.termguicolors = true

            -- OR setup with some options
            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 35,
                    relativenumber = true,
                    side = "right",  -- Open on the right-hand side
                },
                renderer = {
                    indent_markers = {
                        enable = true,
                    }
                },
                actions = {
                    open_file = {
                        window_picker = {
                            enable = false,
                        }
                    }
                },
                filters = {
                    dotfiles = true,
                },
                git = {
                    ignore = false,
                },
            })

             -- make nvim-tree background transparent
            vim.cmd([[ highlight NvimTreeNormal guibg=NONE ]])

            -- keymaps
            local keymap = vim.keymap
            keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
            keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current" })
            keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
            keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
        end,
    }
}

