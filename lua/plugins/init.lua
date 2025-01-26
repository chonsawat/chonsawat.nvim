local config = require("plugins.config")
local options = require("plugins.options")

return {
  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = config.autopairs
  },
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
  }
}
