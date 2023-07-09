local cmd = vim.cmd -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/windows-scoped options

-- main
opt.number = true
opt.autoindent = true
opt.smarttab = true
opt.mouse = 'a'
opt.encoding = 'UTF-8'
opt.swapfile = false
opt.guifont = 'UbuntuMono NFM 12'
opt.cursorline = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.wrap = false
opt.history = 1000
opt.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'
opt.updatetime = 300
opt.backup = false
opt.writebackup = false

-- theme
opt.termguicolors = true --  24-bit RGB colors
cmd 'colorscheme ayu'
