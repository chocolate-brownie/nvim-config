return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Custom configuration for cpplint to filter out specific warnings
    lint.linters.cpplint.args = {
      "--filter=-whitespace,-whitespace/tab,-whitespace/braces,-build/include_order,-build/include,-legal/copyright",
      "--verbose=3"  -- Set verbosity level to only show more important issues (3=warning/errors)
    }

    lint.linters_by_ft = {
      -- Linters for various file types
      -- c = { "cpplint" },  -- C linter (cpplint)
      cpp = { "cpplint" },  -- C++ linter (cpplint)
      python = { "pylint" },  -- Python linter (pylint)
      sh = { "shellcheck" },  -- Shell script linter
      make = { "checkmake" }, -- Makefile linter (optional)
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}

