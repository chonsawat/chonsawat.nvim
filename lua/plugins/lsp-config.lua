return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "jdtls"},
            })
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("mason-nvim-dap").setup({
                ensure_installed = {"java-debug-adapter", "java-test"}
            })
        end
    },
    {
            "mfussenegger/nvim-jdtls",
            dependencies = {
                "mfussenegger/nvim-dap"
            }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})

            vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {desc = "[C]ode [H]over Documentation"})
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {desc = "[C]ode Goto [D]efinition"})
            vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {desc = "[C]ode [A]ctions"})
            vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, {desc = "[C]ode Goto [R]eferences"})
            vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, {desc = "[C]ode Goto [I]mplementations"})
            vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, {desc = "[C]ode [R]ename"})
            vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, {desc = "[C]ode Goto [D]eclaration"})
        end
    }
}