-- fetch keymap function
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap

-- NAVIGATION
map('n', '<leader>e', [[:NvimTreeToggle<CR>]], {})

keymap.set("n", "<leader>nh", ":nohl<CR>") -- Clear search highlight
keymap.set("n", "x", '"_x')


keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
-- Ctrl+s to save the file
map('n', '<C-s>', [[:w<CR>]], {})

-- Debugging
--map('n', '<F5>', [[:lua require'dap' .continue()<CR>]], {})
map('n', '<F3>', [[:lua require'dap' .step_over()<CR>]], {}) -- actual: F10
map('n', '<F2>', [[:lua require'dap' .step_into()<CR>]], {}) -- actual: F11
map('n', '<F12>', [[:lua require'dap' .step_out()<CR>]], {}) -- actual: F12
map('n', '<F6>', [[:lua require'dap' .repl.open()<CR>]], {}) -- actual: F6
map('n', 'dl', [[:lua require'dap' .run_last()<CR>]], {}) -- actual: F10
map('n', 'dt', [[:lua require'dap-go' .debug_test()<CR>]], {}) -- actual: F10
map('n', '<C-b>', [[:lua require'dap' .toggle_breakpoint()<CR>]],{})

-- C+d i will debugmode and remove NvimTree
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui' .toggle()<CR>]],{})

-- Press CTRL + l to set Logpoinx
map('n', '<C-l>', [[:lua require'dap' .set_breakpoint(nil,nil, vim.fn.input('Log Point Msg: '))<CR>]], {})


-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
