return {
    "voldikss/vim-floaterm",
    config = function()

        local position = "bottomright"

        ---------------------------------------------------
        --  Hotkey Control
        ---------------------------------------------------
        vim.keymap.set({'t'}, '<A-n>', function()
            vim.cmd(string.format('FloatermNew --position=%s', position))
        end, {desc="Floating Terminal [N]ew"})

        vim.keymap.set({'n', 't'}, '<A-]>', '<cmd>FloatermNext<CR>', {desc="Floating Terminal [N]ext"})
        vim.keymap.set({'n', 't'}, '<A-[>', '<cmd>FloatermPrev<CR>', {desc="Floating Terminal [P]revious"})

        vim.keymap.set({'n', 't'}, '<A-\\>', function()
            local exists = vim.fn["floaterm#buflist#gather"]()[1]
            if exists ~= nil then
                vim.cmd [[FloatermToggle]]
            else
                vim.cmd(string.format('FloatermNew --position=%s', position))
            end
        end, {desc="Floating Terminal [T]oggle"})
        vim.keymap.set({'t'}, '<A-k>', '<cmd>FloatermKill<CR>', {desc="Floating Terminal [K]ill"})

        ---------------------------------------------------
        --  Run Java maven
        ---------------------------------------------------
        vim.keymap.set("n", "<leader>Jp", function()
            local user_input = vim.fn.input("Enter input: ")
            vim.cmd(string.format([[echo "Running (%s) ..."]], user_input))

            if user_input ~= "" then
                -- vim.cmd(string.format([[terminal mvn clean install && mvn exec:java -dexec.mainclass="%s"]], user_input))
                local exists = vim.fn["floaterm#terminal#get_bufnr"]('java-term')

                if exists == -1 then
                    vim.cmd(string.format('FloatermNew --name=java-term --position=%s'), position)
                else
                    vim.cmd [[FloatermShow --name=java-term]]
                end
                vim.cmd(string.format([[FloatermSend --name=java-term mvn clean install]], user_input))
                -- vim.cmd [[FloatermSend --name=java-term clear]]
                vim.cmd(string.format([[FloatermSend --name=java-term mvn exec:java -Dexec.mainClass="%s" -q]], user_input))
            else
                print("Skipping execution because input is empty.")
            end

        end, {desc = "Run Maven Project"})

    end
}
