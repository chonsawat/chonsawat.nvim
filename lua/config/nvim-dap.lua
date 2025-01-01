local dap, dapui = require("dap"), require("dapui")
--
-- Setup the dap ui with default configuration
dapui.setup()

-- Auto Open DAP UI when debugging starts
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
-- Auto Close DAP UI when debugging ends
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.after.event_exited["dapui_config"] = function()
    dapui.close()
end

-- Useful DAP Keymaps
vim.keymap.set("n", "<Leader>do", function()
    require("dapui").open()
end, { desc = "dapui.open" })
vim.keymap.set("n", "<Leader>dc", function()
    require("dap").continue()
end, { desc = "dap.continue" })
vim.keymap.set("n", "<Leader>dso", function()
    require("dap").step_over()
end, { desc = "dap.step_over" })
vim.keymap.set("n", "<Leader>dsi", function()
    require("dap").step_into()
end, { desc = "dap.step_into" })
vim.keymap.set("n", "<Leader>dsb", function()
    require("dap").step_out()
end, { desc = "dap.step_out" })
vim.keymap.set("n", "<Leader>b", function()
    require("dap").toggle_breakpoint()
end, { desc = "dap.toggle_breakpoint" })
vim.keymap.set("n", "<Leader>B", function()
    require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "dap.set_breakpoint with condition" })
vim.keymap.set("n", "<Leader>lp", function()
    require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end, { desc = "dap.set_breakpoint with log point message" })
vim.keymap.set("n", "<Leader>dr", function()
    require("dap").repl.open()
end, { desc = "dap.repl.open" })
vim.keymap.set("n", "<Leader>dl", function()
    require("dap").run_last()
end, { desc = "dap.run_last" })
vim.keymap.set("n", "<Leader>dq", function()
    require("dapui").close()
end, { desc = "dapui.close" })

vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
    require("dap.ui.widgets").hover()
end, { desc = "dap.ui.widgets.hover" })

vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
    require("dap.ui.widgets").preview()
end, { desc = "dap.ui.widgets.preview" })

vim.keymap.set("n", "<Leader>df", function()
    local widgets = require("dap.ui.widgets")
    widgets.centered_float(widgets.frames)
end, { desc = "dap.ui.widgets.frames" })

vim.keymap.set("n", "<Leader>dsc", function()
    local widgets = require("dap.ui.widgets")
    widgets.centered_float(widgets.scopes)
end, { desc = "dap.ui.widgets.scopes" })
