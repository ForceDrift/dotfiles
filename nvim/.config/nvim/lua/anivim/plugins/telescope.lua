return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",

    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local actions = require("telescope.actions")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<M-l>"] = actions.select_vertical, -- Option + L (Insert mode)
                    },
                    n = {
                        ["<M-l>"] = actions.select_vertical, -- Option + L (Normal mode)
                    },
                },
            },
        })
        vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<space>g", require("telescope.builtin").lsp_references)
        vim.keymap.set("n", "<space>b", require("telescope.builtin").buffers)
    end,
}
