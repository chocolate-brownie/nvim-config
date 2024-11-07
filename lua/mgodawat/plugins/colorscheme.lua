return {
    -- Rose Pine colorscheme
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        opts = {
            dark_variant = "main", -- You can change to "moon" or "dawn" if preferred
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = true, -- Enable transparency
            disable_float_background = true, -- Floating windows transparent
            disable_italics = true,
            highlight_groups = {
                Function = { fg = "rose", bold = true }, -- Function names bold
                Identifier = { fg = "pine" }, -- Variables
                Todo = { fg = "gold", bold = true }, -- TODOs in bold
                Comment = { fg = "muted", italic = true }, -- Comments italic
                Error = { fg = "love", bold = true }, -- Errors in bold
            },
        },
        init = function()
            vim.cmd("colorscheme rose-pine")
        end,
    },
}

