vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


local map = vim.keymap.set;

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map('n', '<leader>e', "<cmd>NeoTreeFocusToggle<cr>",{ desc = "File [E]xplorer"})

-- navigate in insert mode 
map('i', '<C-h>', "<Left>", { desc = "Move left" })
map('i', '<C-l>', "<Right>", { desc = "Move right" })
map('i', '<C-j>', "<Down>", { desc = "Move down" })
map('i', '<C-k>', "<Up>", { desc = "Move up" })

-- switch between windows
map({ 'n', 'v' }, '<c-h>', "<C-w>h", { desc = "Window left" })
map({ 'n', 'v' }, '<c-l>', "<C-w>l", { desc = "Window right" })
map({ 'n', 'v' }, '<c-j>', "<C-w>j", { desc = "Window down" })
map({ 'n', 'v' }, '<c-k>', "<C-w>k", { desc = "Window up" })

-- Trouble
map('n', '<leader>tt', "<cmd>TroubleToggle<cr>", { silent = true, noremap = true, desc = "Trouble Toggle" })
map('n', '<leader>tw', "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true, desc = "Trouble workspace_diagnostics" })
map('n', '<leader>td', "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true, desc = "Trouble document_diagnostics" })
map('n', '<leader>tl', "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true, desc = "Trouble loclist" })
map('n', '<leader>tq', "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true, desc = "Trouble quickfix" })
map('n', '<leader>tr', "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true, desc = "Trouble lsp_references" })

-- Terminal
map({ 'n', 'v', 'i', 't' }, '<A-h>', "<cmd>ToggleTerm size=40 direction=horizontal<cr>", { silent = true, noremap = true, desc = "Toggle horizontal terminal" } )

map({ 'n', 'v' }, '<leader>th', "<cmd>ToggleTerm direction=horizontal<cr>", {silent = true, noremap = true, desc = "Toggle horizontal terminal" })
map({ 'n', 'v' }, '<leader>tf', "<cmd>ToggleTerm direction=float<cr>", { silent = true, noremap = true, desc = "Toggle float terminal" })
