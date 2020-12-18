
local api = vim.api
local bo = vim.bo
local g = vim.g
local o = vim.o
local wo = vim.wo


-- main
g.autochdir = true
g.mapleader = " "
g.python3_host_prog = '/usr/bin/python3.8'
g.python_host_prog = '/usr/bin/python2'
o.backspace = "indent,start"
o.clipboard = "unnamedplus"
o.mouse = "a"
o.shortmess = "atI"
o.ve = "onemore"
o.inccommand = "nosplit"

-- interface
api.nvim_command("colorscheme gruvbox")
g.listchars = [[tab:|]]
o.fillchars = [[vert: ]]
o.hidden = true
o.laststatus = 0
o.list = true
o.ruler = false
o.showmode = false
o.termguicolors = false
o.title = true
o.titlestring = "%t"
o.updatetime = 50
wo.cursorcolumn = false
wo.cursorline = true
wo.number = true
wo.relativenumber = true
wo.signcolumn = "yes"
wo.wrap = false

-- tabs
bo.expandtab = true
bo.shiftwidth = 4
bo.smartindent = true
bo.tabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4

-- case check
o.hlsearch = true
o.ignorecase = true
o.ignorecase = true
o.incsearch = true
o.smartcase = true
o.smartcase = true

-- backup, undo, swap options
o.backup = false
o.swapfile = false
o.undofile = false
o.writebackup = false

vim.api.nvim_set_keymap('n', '<leader>vs', ':LazyGit<CR>', { noremap = true, silent = true })
