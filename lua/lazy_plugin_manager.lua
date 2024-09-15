local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    { 
	"catppuccin/nvim", name = "catppuccin", priority = 1000
    },
    {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
	config = true,
	-- use opts = {} for passing setup options
	-- this is equalent to setup({}) function
    },
    {
	'machakann/vim-sandwich',
    },
    {
    	'nvim-tree/nvim-tree.lua',
    },
    {
	'nvim-tree/nvim-web-devicons',
    },
    {
	'nvim-treesitter/nvim-treesitter',
    },
    {
      "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
              -- opts = {
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below
	      -- }
    },
}
