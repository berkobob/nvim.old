return {
<<<<<<< HEAD
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
            }
        })
    end
=======
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.write_good,
                null_ls.builtins.formatting.dart_format
			},
		})
	end,
>>>>>>> 1c0ca29cab28bfad0798cd50b69bb94397fabc97
}
