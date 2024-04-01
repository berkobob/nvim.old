return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- nvim v0.8.0
        require("lazy").setup({
            {
                "kdheepak/lazygit.nvim",
                cmd = {
                    "LazyGit",
                    "LazyGitConfig",
                    "LazyGitCurrentFile",
                    "LazyGitFilter",
                    "LazyGitFilterCurrentFile",
                },
            },
        })
    end,
}
