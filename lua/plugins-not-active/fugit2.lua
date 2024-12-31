return {
    'SuperBo/fugit2.nvim',
    opts = {
        width = 70,
        external_diffview = true, -- tell fugit2 to use diffview.nvim instead of builtin implementation.
    },
    dependencies = {
        "sindrets/diffview.nvim",
        'MunifTanjim/nui.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim',
        {
            'chrisgrieser/nvim-tinygit', -- optional: for Github PR view
            dependencies = { 'stevearc/dressing.nvim' }
        },
    },
    cmd = { 'Fugit2', 'Fugit2Blame', 'Fugit2Diff', 'Fugit2Graph' },
    keys = {
        { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>' }
    },
    options = function ()
        require('fugit2.nvim').setup({
        })
    end
}
