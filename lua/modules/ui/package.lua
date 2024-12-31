local conf = require('modules.ui.config')
local package = {}

table.insert(package, { "catppuccin/nvim", })

table.insert(package, { "tiagovla/tokyodark.nvim", })

table.insert(package, {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = conf.cyberdream
})

return package
