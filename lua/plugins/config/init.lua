local config = {}

function config.lualine()
  -- call the setup function with properties to define how our lualine will look
  require("lualine").setup({
    options = {
      -- Use web devicons if you have a nerdfont installed
      icons_enabled = true,
      -- Set the theme to dracula, lualine documentation has other themes available as well
      theme = "dracula",
      -- Separate components of lua line with chevrons
      component_separators = { left = "", right = "" },
      -- Separate sections with solid triangles
      section_separators = { left = "", right = "" },
      -- disable the status line and winbar
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      -- Don't focus lualine on NvimTree
      ignore_focus = { "NvimTree" },
      -- Always divide lualine in the middle
      always_divide_middle = true,
      -- Disable global status
      globalstatus = false,
      -- Refresh every 1000 miliseconds
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    -- Setup what each lualine section will contain
    -- sections start at a on the left and go to z on the right
    sections = {
      -- display the current mode in section a
      lualine_a = { "mode" },
      -- display the current git branch, git differences, and any code diagnostics in section b
      lualine_b = { "branch", "diff", "diagnostics" },
      -- display the filename in section c
      lualine_c = { "filename" },
      -- display the file encoding type, os, and filetype in section x
      lualine_x = { "encoding", "fileformat", "filetype" },
      -- display where you are at in the file in section y
      lualine_y = { "progress" },
      -- display exact location of the cursor in section z
      lualine_z = { "location" },
    },
    -- Setup what each section will contain in inactive buffers
    inactive_sections = {
      -- display nothing in sections a and b
      lualine_a = {},
      lualine_b = {},
      -- display the file name in section c
      lualine_c = { "filename" },
      -- display the exact location of the cursor in section x
      lualine_x = { "location" },
      -- display nothing in sections y and z
      lualine_y = {},
      lualine_z = {},
    },
    -- Use default values for tabline, winbar, inactive winbar and extensions
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  })
end

function config.cyberdream()
    require("cyberdream").setup({
        transparent = true,
        italic_comments = false,
        borderless_telescope = false,
        cache = true,
        extensions = {
            telescope = true,
            notify = true,
            mini = true,
        },
        options = {
            colorscheme = "cyberdream"
        }
    })

    vim.cmd.colorscheme "cyberdream"
end

function config.telescope()
  local actions = require("telescope.actions")

  require('telescope').setup({
    defaults = {
      -- Default configuration for telescope goes here:
      mappings = {
        i = {
          ["<C-h>"] = "which_key"
        }
      }
    }
  })

  -- Keymap
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = "Color Scheme" })
  
  -- Git Keymap
  vim.keymap.set('n', '<leader>fogC', '<cmd>Telescope git_commits<CR>', { desc = "Git commit list", noremap = true })
  vim.keymap.set('n', '<leader>fogf', '<cmd>Telescope git_files<CR>', { desc = "Git track file list", noremap = false })
  vim.keymap.set('n', '<leader>fogs', '<cmd>Telescope git_stash<CR>', { desc = "Git stash list", noremap = false })
  vim.keymap.set('n', '<leader>fogt', '<cmd>Telescope git_status<CR>', { desc = "Git status list", noremap = false })

  -- Extension
  telescopeNotify()
end

function telescopeNotify()
  require("telescope").load_extension("notify")

  -- Keymap
  vim.keymap.set('n', '<leader>fn', "<cmd>Telescope notify<CR>", { desc = "Color Scheme" })
end

function config.telescopeMacro()
  require("telescope").load_extension("macros")

  -- Keymap
  vim.keymap.set("n", "<space>fm", "<cmd>Telescope macros<cr>", { desc = "Telescope Macros", noremap = false })
end

function config.oil()
  require("oil").setup({
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<tab>"] = "actions.select",
      ["<C-V>"] = { "actions.select", opts = { vertical = true } },
      ["<C-x>"] = { "actions.select", opts = { horizontal = true } },
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = { "actions.close", mode = "n" },
      ["<leader><C-l>"] = "actions.refresh",
      ["-"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["g\\"] = { "actions.toggle_trash", mode = "n" },

      -- Comments
      -- ["`"] = { "actions.cd", mode = "n" },
    },
  })

  -- Keymap
  vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Oil neovim", noremap = false })
end

function config.nvimTree()
  require("nvim-tree").setup({
    view = {
      width = 30,
    },
    filters = {
      dotfiles = true,
    }
  })

  vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>", {desc = "NvimTree Focus"})
end

function config.mini()
  require('mini.cursorword').setup()
  require('mini.tabline').setup()
  require('mini.pairs').setup()
  require('mini.splitjoin').setup()
  require('mini.surround').setup()
  require('mini.completion').setup()
  require('mini.git').setup()
  require('mini.jump2d').setup()
  require('mini.diff').setup()

  mini_animate()
end

function mini_animate()
  local animate = require('mini.animate')
  animate.setup({
    cursor = {
      -- Animate for 25 milliseconds with linear easing
      timing = animate.gen_timing.linear({ duration = 25, unit = 'total' }),

      -- Animate with shortest line for any cursor move
      path = animate.gen_path.line({
        predicate = function() return true end,
      }),
    }
  })
end

function config.notify()
  require("notify").setup({
    render = "default",
    stages = "static",
    fps = 30,
    timeout = 1000, -- 1 seconds
  })
end

function config.noice()
  require("noice").setup({
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,         -- requires hrsh7th/nvim-cmp
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true,                 -- use a classic bottom cmdline for search
      command_palette = true,               -- position the cmdline and popupmenu together
      long_message_to_split = true,         -- long messages will be sent to a split
      inc_rename = false,                   -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,               -- add a border to hover docs and signature help
    },
  })
end

function config.mason()
  local on_attach_handler = function(server_name)
    print("Mason setup: ", server_name)

    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "LSP rename"})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "LSP code action"})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "LSP Definition"})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {desc = "LSP Implementation"})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {desc = "LSP References"})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "LSP Hover"})
  end

  require("mason").setup({})
  require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "jdtls"},
    handlers = {
      function(server_name)
        print("Setting up", server_name)
        require("lspconfig")[server_name].setup({
          on_attach = on_attach_handler(server_name)
        })
      end,
    }
  })
end

return config
