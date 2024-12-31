return {
    "eatgrass/maven.nvim",
    cmd = { "Maven", "MavenExec" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
        require('maven').setup({
            executable = "mvn",
            cwd = vim.fnd.getcwd(),
            conmands = {
                { cmd = { "clean", "compile" }, desc = "clean then compile" }
            }
        })
    end
}
