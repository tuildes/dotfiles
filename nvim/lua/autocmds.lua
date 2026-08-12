require "nvchad.autocmds"
local autocmd = vim.api.nvim_create_autocmd

-- Nvim Tree Configuration
local function open_nvim_tree()
    require("nvim-tree.api").tree.open()
    vim.cmd("wincmd p")
end

autocmd( "VimEnter", { callback = open_nvim_tree })
autocmd( "BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd("quit")
        end
    end,
})

