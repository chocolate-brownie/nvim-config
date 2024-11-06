return {
    "dense-analysis/ale",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- set keymaps for linting
        local keymap = vim.keymap -- for conciseness

        -- Next ALE warning/error
        keymap.set("n", "]e", "<Plug>(ale_next_wrap)", { desc = "Next ALE error/warning" })

        -- Previous ALE warning/error
        keymap.set("n", "[e", "<Plug>(ale_previous_wrap)", { desc = "Previous ALE error/warning" })

        -- Trigger manual linting
        keymap.set("n", "<leader>l", ":ALELint<CR>", { desc = "Trigger ALE Lint" })

        -- ALE setup
        vim.g.ale_lint_on_text_changed = "always"
        vim.g.ale_lint_on_insert_leave = 1
        vim.g.ale_lint_on_enter = 1

        -- Enable linters for C or other languages
        vim.g.ale_linters = {
            c = {'clangd', 'gcc'},
            python = {'pylint'}
        }

        -- Set ALE to check for function length (if you want to add a linter that supports function length checking, e.g., pylint for Python or custom checkers)
        vim.g.ale_c_gcc_options = '-Wshorten-64-to-32 -Wfunction-limits=25' -- Custom options, example for C

        -- Optionally: Configure ALE to show function length warning (based on the linter you choose)
    end
}

