return {
    -- Lualine statusline
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                theme = "catppuccin", -- Use the Catppuccin theme for Lualine
                section_separators = { left = "", right = "" }, -- Customize separators
                component_separators = { left = "", right = "" }, -- Customize component separators
                icons_enabled = true,
                disabled_filetypes = {}, -- Disable for certain filetypes (if needed)
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "filename" },
                lualine_x = { "encoding", "fileformat", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            extensions = { "quickfix", "fugitive" }, -- Add any specific extensions if needed
        },
    },
}

