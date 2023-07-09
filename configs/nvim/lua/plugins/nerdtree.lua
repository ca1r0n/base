local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- горячие клавиши
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
