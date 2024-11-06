return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        -- import nvim-autopairs
        local autopairs = require("nvim-autopairs")

        -- configure autopairs
        autopairs.setup({
            check_ts = true, -- enable treesitter integration for better language support
            ts_config = {
                lua = { "string" }, -- don't add pairs in lua string treesitter nodes
                javascript = { "template_string" }, -- don't add pairs in JavaScript template_string treesitter nodes
                python = { "string" }, -- avoid adding pairs in Python strings
                bash = { "string" }, -- avoid adding pairs in Bash strings
                c = { "string_literal", "character_literal" }, -- avoid adding pairs in C/C++ literals
                cpp = { "string_literal", "character_literal" }, -- for C++
                java = false, -- no Treesitter checking for Java
            },
            fast_wrap = {
                map = "<M-e>", -- wrap mappings, can be customized
            },
        })

        -- import nvim-autopairs completion functionality
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")

        -- import nvim-cmp plugin (completions plugin)
        local cmp = require("cmp")

        -- make autopairs and completion work together
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}


