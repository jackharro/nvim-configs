
-- Configs important for repairing configs are first
vim.opt.shiftwidth = 4
vim.cmd('command ConfigEdit e ~/.config/nvim')
-- vim.cmd.command('')
vim.g.netrw_keepdir = false


-- something like this works in the Linux configs.
local function toggle_word_wrap(wrap_state)
	vim.api.nvim_notify("wrap_state: " .. tostring(wrap_state) .. "vim.opt.wrap: "..  tostring(vim.opt.wrap), 0 , {})
	vim.opt.wrap = not wrap_state
end
-- RHS: <cmd>command line<cr>
vim.keymap.set({ 'n', 'i', 'v' }, '<S-C-w>', function() toggle_word_wrap(vim.opt.wrap) end, { silent = false, noremap = true })

-- </wrap>

if vim.fn.getcwd() == '/' then
	vim.cmd('cd ~')
	print('Chang wd to ~')
end

vim.o.guifont = 'Cascadia Code NF:h14'
require('mapping/scroll')



if vim.uv.os_uname().sysname == 'Darwin' then
	vim.api.nvim_create_user_command( 'CdG',
	    [[echo "Use CdGS or CdGP for School or Personal Google Drives."]], {})
	vim.api.nvim_create_user_command( 'CdGS',
	    [[cd /Users/jack.harrington/Library/CloudStorage/GoogleDrive-jack.harrington@shcy.vic.edu.au/My Drive]], {})
	vim.api.nvim_create_user_command( 'CdGP',
	    [[cd /Users/jack.harrington/Library/CloudStorage/GoogleDrive-jackharro282@gmail.com/My Drive]], {})
	vim.api.nvim_create_user_command('CdC',
	    [[cd Users/jack.harrington/Library/Mobile Documents/com~apple~CloudDocs]], {})
end

require('bootstrap/lazy')

if vim.g.neovide then
	require('lazy').setup(
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 }
	)

	require("catppuccin").setup(
		{
		flavour = "latte",
		}
	)

	vim.cmd.colorscheme("catppuccin")
end

