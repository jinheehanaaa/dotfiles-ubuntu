-- fetch keymap function
local map = vim.api.nvim_set_keymap

map('n', '<C-s>', [[:w<CR>]], {})
