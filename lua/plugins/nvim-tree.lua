return {
    "nvim-tree/nvim-tree.lua",
    config = function() 
        vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {desc="Toggle [E]xplorer"})
        vim.keymap.set("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", {desc="F[o]cus Explorer"})
        vim.keymap.set("n", "<leader>O", "<cmd>buffer<CR>", {desc="Focus Buffer"})
        require("nvim-tree").setup({
            hijack_netrw =  true,
            auto_reload_on_write = true,
        })
    end
}
