return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
        -- import comment plugin safely
        local comment = require("Comment")

        local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

        -- enable comment
        comment.setup({
            -- set up language-specific comment strings based on the file type
            pre_hook = function(ctx)
                -- Use context-aware commenting for web development files and scripting languages
                return ts_context_commentstring.create_pre_hook()(ctx)
            end,
            mappings = {
                basic = true, -- enable basic mappings
                extra = true, -- enable extra mappings like `gcA` for commenting at end of line
            },
        })

        -- Keybindings for commenting with <leader>g
        local keymap = vim.keymap -- for conciseness

        -- Normal mode: Toggle comment on the current line
        keymap.set("n", "<leader>gc", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Toggle comment on current line" })
        -- Visual mode: Toggle comment on selected lines
        keymap.set("v", "<leader>gc", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle comment on selected lines" })
        -- Normal mode: Toggle block comment on the current line
        keymap.set("n", "<leader>gC", "<cmd>lua require('Comment.api').toggle.blockwise.current()<CR>", { desc = "Toggle block comment on current line" })
        -- Visual mode: Toggle block comment on selected lines
        keymap.set("v", "<leader>gC", "<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>", { desc = "Toggle block comment on selected lines" })
    end,
}

