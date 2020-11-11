 
local wo = vim.wo
local o = vim.o
local bo = vim.bo
local g = vim.g


-- main
g.mapleader = " "
o.clipboard = "unnamedplus"
o.ve = "onemore"
o.shortmess = "atI"
g.python_host_prog = '/usr/bin/python2'
g.python3_host_prog = '/usr/bin/python3.8'
o.mouse = "a"
o.backspace = "indent,start"
g.autochdir = true

-- interface
vim.api.nvim_command("colorscheme gruvbox")
wo.cursorline = true
wo.number = true
wo.relativenumber = true
wo.cursorcolumn = false
o.termguicolors = false
o.title = true
o.titlestring = "%t"
o.ruler = false
o.list = true
--vim.api.nvim_command("set list")
--vim.api.nvim_command([[set listchars=tab:!·,trail:·]])
-- o.lazyredraw = true
o.list = true
g.listchars = [[tab:|]]
o.fillchars = [[vert: ]]
o.updatetime = 50
o.hidden = true
wo.wrap = false
o.showmode = false
o.laststatus = 0

-- tabs
o.smartindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
bo.expandtab = true
bo.tabstop = 4
bo.smartindent = true
bo.shiftwidth = 4

-- case check
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- backup, undo, swap options
o.undofile = false
o.backup = false
o.writebackup = false
o.swapfile = false

vim.api.nvim_set_keymap('n', '<leader>vs', ':LazyGit<CR>', { noremap = true, silent = true })
