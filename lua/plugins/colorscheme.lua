return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {
        no_italic = true,
        term_colors = true,
        transparent_background = true,
        color_overrides = {
            mocha = {
                rosewater = "#F5B8AB",
                flamingo = "#F29D9D",
                pink = "#AD6FF7",
                mauve = "#FF8F40",
                red = "#E66767",
                maroon = "#EB788B",
                peach = "#FAB770",
                yellow = "#FACA64",
                green = "#70CF67",
                teal = "#4CD4BD",
                sky = "#61BDFF",
                sapphire = "#4BA8FA",
                blue = "#00BFFF",
                lavender = "#00BBCC",
                text = "#C1C9E6",
                subtext1 = "#A3AAC2",
                subtext0 = "#8E94AB",
                overlay2 = "#7D8296",
                overlay1 = "#676B80",
                overlay0 = "#464957",
                surface2 = "#3A3D4A",
                surface1 = "#2F313D",
                surface0 = "#1D1E29",
                base = "#0b0b12",
                mantle = "#11111a",
                crust = "#191926",
            },

        }
    },
    config = function ()
        vim.cmd.colorscheme "catppuccin-mocha"
        require('catppuccin').setup(opts)
    end,
}
