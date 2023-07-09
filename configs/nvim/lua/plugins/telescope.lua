require('telescope').setup {pickers = {find_files = {hidden = true}}}

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- hot keys
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
