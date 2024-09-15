vim.cmd.colorscheme "catppuccin-latte"

require("catppuccin").setup({
integrations = {
    native_lsp = {
	enabled = true,
	virtual_text = {
	    errors = { "italic" },
	    hints = { "italic" },
	    warnings = { "italic" },
	    information = { "italic" },
	},
	underlines = {
	    errors = { "underline" },
	    hints = { "underline" },
	    warnings = { "underline" },
	    information = { "underline" },
	},
	inlay_hints = {
	    background = true,
	},
    },
}
})

require('theme/font_and_cursor')
