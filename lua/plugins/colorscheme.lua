return {
    { "catppuccin/nvim", },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require "config.color-scheme.cyberdream"
        end,
    },
    { "tiagovla/tokyodark.nvim", }
}
