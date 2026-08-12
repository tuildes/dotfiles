return {
    {
        "andweeb/presence.nvim",
        lazy = false,
        config = function()
            require("presence").setup({
                -- General options
                neovim_image_text   = "neovim",
                main_image          = "neovim",
                log_level           = "debug",
                debounce_timeout    = 10,
                enable_line_number  = false,
                buttons             = true,
                show_time           = true,

                -- Language configuration and labels
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
        end
    }
}
