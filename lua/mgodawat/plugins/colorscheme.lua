return {
    -- Catppuccin colorscheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true, -- Enable transparency
            term_colors = true, -- Terminal colors
            styles = {
                -- comments = { "italic" }, -- Italic for comments
                -- keywords = { "italic" }, -- Italic for keywords
                -- functions = { "bold" }, -- Bold for function names
                -- variables = { "none" }, -- No style for variables
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
                notify = false,
                mini = false,
            },
            custom_highlights = function(colors)
                return {
                    Normal = { bg = "NONE" }, -- Main window background transparent
                    NormalFloat = { bg = "NONE" }, -- Floating windows transparent
                    Function = { fg = colors.blue, style = { "bold" } }, -- Function names bold
                    Identifier = { fg = colors.teal }, -- Variables
                    Todo = { fg = colors.yellow, style = { "bold" } }, -- TODOs in bold
                    Comment = { fg = colors.overlay0, style = { "italic" } }, -- Comments italic
                    Error = { fg = colors.red, style = { "bold" } }, -- Errors in bold
                }
            end,
        },
        init = function()
            vim.cmd("colorscheme catppuccin-mocha")
        end,
    },
}

