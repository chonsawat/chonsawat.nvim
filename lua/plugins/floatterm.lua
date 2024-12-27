return {
    "voldikss/vim-floaterm",
    config = function()
       vim.keymap.set('n', '<A-t>n', ':FloatermNew<cr>', {desc="Floating Terminal [N]ew"})
       vim.keymap.set('n', '<A-t>]', ':FloatermNext<cr>', {desc="Floating Terminal [N]ext"})
       vim.keymap.set('n', '<A-t>[', ':FloatermPrev<cr>', {desc="Floating Terminal [P]revious"})
       vim.keymap.set('n', '<A-\\>', ':FloatermToggle<cr>', {desc="Floating Terminal [T]oggle"})
       vim.keymap.set('n', '<A-t>k', ':FloatermKill<cr>', {desc="Floating Terminal [K]ill"})
    end
}
