-- Path for LazyVim
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"

-- Check and install LazyVim if not exist in lazy.nvim
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

-- Option for LazyVim
local opts = {
    change_detection = {
        notify = false
    },
    checker = {
        enabled = true,
        notify = false
    }
}

-- Loading core configuration
require("core.options")
require("core.keymaps")
require("config.autocmds")

-- Lazy Plugins
require("lazy").setup("plugins", opts)


