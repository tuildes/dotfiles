return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
        view = {
            width = 40,
        },
        sort = {
            sorter = "name"
        },
        renderer = {
            root_folder_label = false,
            group_empty = false,
            highlight_git = true,
            indent_markers = { enable = true },
        },
        filters = {
            git_ignored = true,
            git_clean = false,
            custom = { "^\\.git$" }
        },
    },
}
