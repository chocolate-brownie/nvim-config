return {
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css",
                "c", "cpp"
            },
        },
    },

    -- Mason 
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format",
                "codelldb",
            }
        }
    },

    -- c_formatter_42.vim plugin
    {
        "cacharle/c_formatter_42.vim",
        ft = { "c"},
        config = function()
        end,
    },

    -- 42header plugin
    {
        "42Paris/42header",
        ft = { "c", "cpp" },
        config = function()
        end,
    },

    -- Screenshots
    {
        'ellisonleao/carbon-now.nvim',
        lazy = true,
        cmd = "CarbonNow",
        config = function()
            require('carbon-now').setup({
                options = {
                    theme = "one-dark",           -- Default theme
                    window_title = true,          -- Show window title
                    font_family = "Hack",         -- Font to use
                    font_size = "18px",           -- Font size
                    bg = "rgba(74, 144, 226, 1)", -- Background color
                    line_numbers = true,          -- Show line numbers
                    line_height = "133%",         -- Line height
                    watermark = false,            -- Add watermark
                    width = "680",                -- Default width
                    padding_vertical = "48px",    -- Vertical padding
                    padding_horizontal = "32px"   -- Horizontal padding
                }
            })
        end
    },
}

