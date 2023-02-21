vim.g.mapleader = ","

vim.opt.encoding="utf-8"

vim.opt.compatible=false
vim.opt.hlsearch=true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.vb = true
vim.opt.ruler = true
vim.opt.spelllang="en_us"
vim.opt.autoindent=true
vim.opt.colorcolumn="120"
vim.opt.textwidth=120
vim.opt.mouse="a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.scrollbind=false
vim.opt.wildmenu=true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursor line
vim.opt.cursorline = true

-- appearance 
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace="indent,eol,start"

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.iskeyword:append("-")


