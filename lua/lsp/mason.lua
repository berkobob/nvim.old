return {
    {
        "williamboman/mason.nvim",
        config = function()
            local mason = require("mason")

            -- enable mason and configure icons
            mason.setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({
                handlers = {
                    require("lsp-zero").default_setup,
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("cmp_nvim_lsp").default_capabilities()
        end,
    },
}
