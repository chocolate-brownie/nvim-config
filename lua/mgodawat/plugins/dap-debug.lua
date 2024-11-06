return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "jay-babu/mason-nvim-dap.nvim", -- Mason integration for nvim-dap
            "rcarriga/nvim-dap-ui",         -- UI for nvim-dap
            "nvim-neotest/nvim-nio"         -- nvim-nio required by nvim-dap-ui
        },
        config = function()
            -- Import dap and dapui modules
            local dap = require("dap")
            local dapui = require("dapui")

            -- Setup dap-ui
            dapui.setup()

            -- Automatically open and close dap-ui during debugging sessions
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end

            -- Configure the adapter for C/C++
            dap.adapters.cppdbg = {
                id = 'cppdbg',
                type = 'executable',
                command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7', -- Mason's installation path
            }

            -- Prompt for command-line arguments when running the program
            dap.configurations.cpp = {
                {
                    name = "Launch File with Arguments",
                    type = "cppdbg",
                    request = "launch",
                    program = function()
                        return vim.fn.getcwd() .. "/a.out"  -- Use the compiled executable
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                    args = function()
                        -- Prompt for command-line arguments
                        local input = vim.fn.input('Arguments: ')
                        return vim.split(input, " ")  -- Split input by spaces
                    end,
                    runInTerminal = false,
                },
            }

            -- Use the same configuration for C
            dap.configurations.c = dap.configurations.cpp

            -- Keybindings for DAP
            local keymap = vim.keymap -- For conciseness

            -- Set keybinds starting with <leader>b for debugging
            keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Start/Continue debugging" })
            keymap.set("n", "<leader>bo", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step over" })
            keymap.set("n", "<leader>bi", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step into" })
            keymap.set("n", "<leader>bO", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Step out" })
            keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
            keymap.set("n", "<leader>bB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { desc = "Set conditional breakpoint" })
            keymap.set("n", "<leader>br", "<cmd>lua require'dap'.repl.open()<CR>", { desc = "Open REPL" })
            keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Run last debug configuration" })
            keymap.set("n", "<leader>bu", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle Debugger UI" })
        end,
    }
}

