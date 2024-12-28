vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {desc = "Remove search highlights" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", {desc = "Exit terminal mode"})

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {desc = "Move foucus to the left window"})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {desc = "Move foucus to the right window"})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {desc = "Move foucus to the lower window"})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {desc = "Move foucus to the upper window"})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {desc = "Diagnostic goto [Prev]"})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {desc = "Diagnostic goto [Next]"})

vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", {desc = "[W]indow Split [V]ertical"})
vim.keymap.set("n", "<leader>wh", ":split<cr>", {desc = "[W]indow Split [H]orizontal"})

vim.keymap.set("v", "<", "<gv", {desc = "Indent left in visual mode"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent right in visual mode"})

vim.keymap.set({"v", "n"}, "..", ":cnext<cr>", {desc = "Quick list [N]ext"})
vim.keymap.set({"v", "n"}, ",,", ":cprevious<cr>", {desc = "Quick list [P]revious"})

vim.keymap.set({"n"}, "<leader>sv", ":source $MYVIMRC<CR>", {desc = "Reload config nvim"})
vim.keymap.set({"n", "v", "i"}, "<C-s>", "<cmd>w!<CR>", {desc = "Reload config nvim"})

-- Buffer
vim.keymap.set({"n"}, "th", "<cmd>bprev<enter>", {noremap = false})
vim.keymap.set({"n"}, "tl", "<cmd>bnext<enter>", {noremap = false})
vim.keymap.set({"n"}, "tk", "<cmd>bw!<enter>", {noremap = false})

-- Required Noice and Telescope
vim.keymap.set({"n"}, "<leader>st", function()
    require('telescope').extensions.notify.notify()
end, {desc = "Reload config nvim"})

-- Git Keymap
-- Required Telescope
vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<CR>', {desc = "Git commit list", noremap = false})
vim.keymap.set('n', '<leader>gf', '<cmd>Telescope git_files<CR>', {desc = "Git track file list", noremap = false})
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_stash<CR>', {desc = "Git stash list", noremap = false})
vim.keymap.set('n', '<leader>gt', '<cmd>Telescope git_status<CR>', {desc = "Git status list", noremap = false})
