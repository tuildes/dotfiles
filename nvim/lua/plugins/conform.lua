return {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
        formatters_by_ft = { 
            swift = { "swiftformat" } 
        },
        formatters = {
            swiftformat = {
                prepend_args = { "--disable", "trailingCommas" },
            },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
