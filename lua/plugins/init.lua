local config = require("plugins.config")
local options = require("plugins.options")

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = config.lualine
  },
  {                      
    'folke/which-key.nvim',
    event = 'VimEnter', 
    opts = options.whichkey()
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = config.cyberdream
  },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config.telescope
  },
  {
    "1riz/telescope-macros.nvim",
    config = config.telescopeMacro
  },
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    lazy = false,
    config = config.oil
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = config.nvimTree
  },
  { 
    'echasnovski/mini.nvim', 
    version = '*',
    config = config.mini
  },
  { 
    'rcarriga/nvim-notify', 
    version = '*',
    config = config.notify
  },
  { 
    'folke/noice.nvim', 
    version = '*',
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = config.noice
  },
}
