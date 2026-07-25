require "nvchad.options"

-- Identation options
local o = vim.o
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Nvim Tree Configuration
local function open_nvim_tree()
    require("nvim-tree.api").tree.open()
    vim.cmd("wincmd p")
end

vim.api.nvim_create_autocmd({ "vimEnter" }, { callback = open_nvim_tree })
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd("quit")
        end
    end,
})
