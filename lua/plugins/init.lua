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
    opts = options.whichkey
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
  {
    "folke/snacks.nvim",
    priority = 100,
    version = '*',
    lazy = false,
    ---@type snacks.Config
    opts = options.snacks,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { 
      { "folke/lazydev.nvim", ft = "lua", opts = { library = { {path = "${3rd}/luv/library", words={"vim%.uv"}} } } },
      "hrsh7th/nvim-cmp",
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = config.mason
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
}
