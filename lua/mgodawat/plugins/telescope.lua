return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required dependency for Telescope
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- for fzf sorting
        "nvim-tree/nvim-web-devicons", -- for file icons
        "folke/todo-comments.nvim", -- for todo comment integration
        "folke/trouble.nvim", -- Add this as a dependency for trouble integration
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local trouble_telescope = require("trouble.providers.telescope") -- Correct the module path here

        -- Define custom actions
        local transform_mod = require("telescope.actions.mt").transform_mod
        local custom_actions = transform_mod({
            open_trouble_qflist = function(prompt_bufnr)
                require("trouble").toggle("quickfix") -- correctly require and toggle trouble quickfix list
            end,
        })

        telescope.setup({
            defaults = {
                path_display = { "smart" }, -- smart display of file paths
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to previous result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist, -- send to qflist with trouble
                        ["<C-t>"] = require("trouble.sources.telescope").open, -- Use the new method instead of deprecated `open_with_trouble`
                    },
                },
            },
        })

        -- Load extensions
        telescope.load_extension("fzf")
        telescope.load_extension("todo-comments") -- load todo-comments for integration

        -- Keymaps for Telescope functionality
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    end,
}

