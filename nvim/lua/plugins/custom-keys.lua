-- fetch keymap function
local map = vim.api.nvim_set_keymap
-- map they key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- Ctrl+s to save the file
map('n', '<C-s>', [[:w<CR>]], {})

-- Debugging
map('n', '<F5>', [[:lua require'dap' .continue()<CR>]], {})
map('n', '<F3>', [[:lua require'dap' .step_over()<CR>]], {}) -- actual: F10
map('n', '<F2>', [[:lua require'dap' .step_into()<CR>]], {}) -- actual: F11
map('n', '<F12>', [[:lua require'dap' .step_out()<CR>]], {}) -- actual: F12
map('n', '<F6>', [[:lua require'dap' .repl.open()<CR>]], {}) -- actual: F6
map('n', 'dl', [[:lua require'dap' .run_last()<CR>]], {}) -- actual: F10
map('n', 'dt', [[:lua require'dap-go' .debug_test()<CR>]], {}) -- actual: F10
map('n', '<C-b>', [[:lua require'dap' .toggle_breakpoint()<CR>]],{})

-- C+d i will debugmode and remove NvimTree
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui' .toggle()<CR>]],{})

-- Press CTRL + l to set Logpoint
map('n', '<C-l>', [[:lua require'dap' .set_breakpoint(nil,nil, vim.fn.input('Log Point Msg: '))<CR>]], {})