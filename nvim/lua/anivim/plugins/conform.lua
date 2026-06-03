return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
        formatters_by_ft = {
            -- Only use stylua, don't let LSP try to format
            lua = { "stylua" },
            cpp = { "clang-tidy" },
            c = { "clang-tidy" },
        },
        formatters = {
            clang_format = {
                -- This overrides the default 80-char wrap and makes it infinite
                prepend_args = { "--style={BasedOnStyle: LLVM, ColumnLimit: 0}" },
            },
        },
        format_on_save = {
            timeout_ms = 500,
            -- This is the key: only use LSP if stylua fails
            lsp_fallback = true,
        },
    },
}
