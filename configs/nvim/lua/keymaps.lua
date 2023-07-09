local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- отключение стрелочек (только hjkl)
map('', '<up>', '', opts)
map('', '<down>', '', opts)
map('', '<left>', '', opts)
map('', '<right>', '', opts)

-- fast buffer map
map('n', '<leader>b', 'ls<CR>:b', opts)
map('n', '<leader>l', ':bn<CR>', opts)
map('n', '<leader>h', ':bp<CR>', opts)

-- nerdtree
