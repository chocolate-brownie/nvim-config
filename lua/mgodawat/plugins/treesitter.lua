-- Place this in a separate Lua file or in a dedicated section
local function setup_treesitter()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
        -- enable syntax highlighting
        highlight = {
            enable = true,
        },
        -- enable indentation
        indent = { enable = true },

        -- ensure these language parsers are installed
        ensure_installed = {
            "c",
            "cpp",
            "python",
            "make",
            "bash",
            "lua",
            "vim",
            "gitcommit",
            "gitignore",
            "markdown",
            "markdown_inline",
            "query",
            "vimdoc",
        },

        -- Enable automatic installation of missing parsers
        auto_install = true,

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- List of parsers to ignore installing
        ignore_install = {},

        -- incremental selection for efficient coding
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<bs>",
            },
        },
    })
end

-- Now, in your plugin setup
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = setup_treesitter,  -- Call the external function here
}

