return -- lazy.nvim
{
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            views = {
                notify = { timeout = 50, focusable = false },
                mini = { timeout = 50 },
            },
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
        },
    },
}
