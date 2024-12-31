return {
    {
        "windwp/nvim-autopairs",
        event = { "InsertEnter" },
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require "config.auto-pairs"
        end
    },
    {
        'mortepau/codicons.nvim',
        config = function()
            require "config.codicons"
        end
    },
    {
        "numToStr/Comment.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
        config = function()
            require "config.comment"
        end,
    },
    {
        'sindrets/diffview.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        cmd = {
            'DiffviewFileHistory', 'DiffviewOpen', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewRefresh'
        }
    },
    {
        "voldikss/vim-floaterm",
        config = function()
            require "config.floaterm"
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            require "config.fugitive"
        end
    },
    {
        "ThePrimeagen/harpoon",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require "config.harpoon"
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
        config = function()
            require "config.indent-blankline"
        end
    },
    {
        "williamboman/mason.nvim",
        config = function()
            -- setup mason with default properties
            require("mason").setup()
        end
    },
    -- mason lsp config utilizes mason to automatically ensure lsp servers you want installed are installed
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require "config.mason-lspconfig"
        end
    },
    -- mason nvim dap utilizes mason to automatically ensure debug adapters you want installed are installed, mason-lspconfig will not automatically install debug adapters for us
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require "config.mason-nvim-dap"
        end
    },
    -- utility plugin for configuring the java language server for us
    {
        "mfussenegger/nvim-jdtls",
        dependencies = {
            "mfussenegger/nvim-dap",
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "config.nvim-lspconfig"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require "config.lualine"
        end,
    },
    {
        "eatgrass/maven.nvim",
        cmd = { "Maven", "MavenExec" },
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require "config.maven"
        end
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        tag = "stable",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            {
                "rcarriga/nvim-notify",
                tag = "v3.14.0"
            },
        },
        config = function()
            require "config.noice"
        end
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
        config = function()
            require "config.none-ls"
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require "config.nvim-tree"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "windwp/nvim-ts-autotag"
        },
        build = ":TSUpdate",
        config = function()
            require "config.nvim-treesitter"
        end
    },
    {                       -- Useful plugin to show you pending keybinds.
        'folke/which-key.nvim',
        event = 'VimEnter', -- Sets the loading event to 'VimEnter'
        opts = require "config.which-key-opts",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require "config.telescope"
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require "config.telescope-ui-select"
        end
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            indent = { enabled = true },
            input = { enabled = false },
            notifier = { enabled = false },
            quickfile = { enabled = true },
            scroll = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
    },
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            -- ui plugins to make debugging simplier
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio"
        },
        config = function()
            require "config.nvim-dap"
        end
    },
    {
        'IogaMaster/neocord',
        event = "VeryLazy",
        config = function()
            require "config.neocord"
        end
    },
    {
        "elmcgill/springboot-nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-jdtls"
        },
        config = function()
            require "config.springboot-nvim"
        end
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            -- feed luasnip suggestions to cmp
            "saadparwaiz1/cmp_luasnip",
            -- provide vscode like snippets to cmp
            "rafamadriz/friendly-snippets",
        }
    },
    -- cmp-nvim-lsp provides language specific completion suggestions to nvim-cmp
    { "hrsh7th/cmp-nvim-lsp", },
    -- nvim-cmp provides auto completion and auto completion dropdown ui
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            -- buffer based completion options
            "hrsh7th/cmp-buffer",
            -- path based completion options
            "hrsh7th/cmp-path",
        },
        config = function()
            require "config.nvim-cmp"
        end
    },

}
