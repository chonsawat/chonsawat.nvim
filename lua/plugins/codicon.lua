return {
    'mortepau/codicons.nvim',
    config = function()
        require('codicons').setup({
            ['comment'] = 0xEA6B, -- hexadecimal
            ['archive'] = 60056, -- decimal
        })
    end
}
