return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree docs
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrePlugin = 1

        nvimtree.setup({
            view = {
                width = 30,
            },
            actions = {
                open_file = {
                    quit_on_open = true,
                }
            }
        })
    end
}
