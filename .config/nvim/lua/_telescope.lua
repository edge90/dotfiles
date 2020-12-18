
-- Search buffers
vim.api.nvim_set_keymap("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", { noremap = true })

-- Search files
vim.api.nvim_set_keymap("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>", { noremap = true })

-- Open file by grep
vim.api.nvim_set_keymap("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", { noremap = true })

-- Search help tags
vim.api.nvim_set_keymap("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", { noremap = true })

-- Search treesitter
-- vim.api.nvim_set_keymap("n", "<leader>ft", ":lua require('telescope.builtin').treesitter()<CR>", { noremap = true })

-- Search command history
vim.api.nvim_set_keymap("n", "<leader>fch", ":lua require('telescope.builtin').command_history()<CR>", { noremap = true })

-- Grep text under cursor
-- vim.api.nvim_set_keymap("n", "<leader>fs", ":lua require('telescope.builtin').grep_string()<CR>", { noremap = true })

-- Git branches
vim.api.nvim_set_keymap("n", "<leader>fgb", ":lua require('telescope.builtin').git_branches()<CR>", { noremap = true })

-- Git commits
vim.api.nvim_set_keymap("n", "<leader>fgc", ":lua require('telescope.builtin').git_commits()<CR>", { noremap = true })

-- Git status
vim.api.nvim_set_keymap("n", "<leader>fgs", ":lua require('telescope.builtin').git_status()<CR>", { noremap = true })

-- Git files
vim.api.nvim_set_keymap("n", "<leader>fgf", ":lua require('telescope.builtin').git_files()<CR>", { noremap = true })

-- Lsp symbols
vim.api.nvim_set_keymap("n", "<leader>fls", ":lua require('telescope.builtin').lsp_document_symbols()<CR>", { noremap = true })
