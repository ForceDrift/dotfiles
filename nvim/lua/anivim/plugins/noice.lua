return -- lazy.nvim
{
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        timeout = 50,
        ---@type table<string, NoiceViewOptions>
        views = {
            notify = { timeout = 50 },
            mini = { timeout = 50 },
        },

        -- add any options here
    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}
