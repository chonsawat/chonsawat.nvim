return {
    "voldikss/vim-floaterm",
    config = function()
       vim.keymap.set({'n', 't'}, '<A-t>n', '<cmd>FloatermNew<CR>', {desc="Floating Terminal [N]ew"})
       vim.keymap.set({'n', 't'}, '<A-]>', '<cmd>FloatermNext<CR>', {desc="Floating Terminal [N]ext"})
       vim.keymap.set({'n', 't'}, '<A-[>', '<cmd>FloatermPrev<CR>', {desc="Floating Terminal [P]revious"})
       vim.keymap.set({'n', 't'}, '<A-\\>', '<cmd>FloatermToggle<CR>', {desc="Floating Terminal [T]oggle"})
       vim.keymap.set({'n', 't'}, '<A-t>k', '<cmd>FloatermKill<CR>', {desc="Floating Terminal [K]ill"})
    end
}
