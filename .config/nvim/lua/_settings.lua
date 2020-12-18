
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

-- Lazygit
vim.api.nvim_set_keymap('n', '<leader>vs', ':LazyGit<CR>', { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap('t', '<C-\\><Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Navigate with hjkl
vim.api.nvim_set_keymap('i', '<C-h>', '<Esc><C-w><C-h>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Esc><C-w><C-j>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Esc><C-w><C-k>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Esc><C-w><C-l>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<C-h>', '<Esc><C-w><C-h>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', '<Esc><C-w><C-j>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', '<Esc><C-w><C-k>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-l>', '<Esc><C-w><C-l>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-w><C-w>', '<Esc><C-w><C-w>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w><C-w>', '<C-\\><C-n><C-w><C-w>', { noremap = true, silent = true })

