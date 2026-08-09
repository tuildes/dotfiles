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

-- Discord presence
require("presence").setup({
    -- General options
    neovim_image_text   = "neovim",
    main_image          = "neovim",
    log_level           = "debug",
    debounce_timeout    = 10,
    enable_line_number  = false,
    buttons             = true,
    show_time           = true,

    -- Language specify
    file_assets = {
        r = { text="R Language", image="r" }
    },

    -- Rich Presence text options
    editing_text        = "editing %s",
    file_explorer_text  = "browsing %s",
    git_commit_text     = "commiting .env in develop",
    plugin_manager_text = "managing plugins",
    reading_text        = "reading %s",
    workspace_text      = "working on %s",
    line_number_text    = "line %s out of %s",
})

