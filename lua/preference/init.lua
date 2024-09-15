-- require('preference/tab')
require('preference/titlebar')
-- require('preference/location')
require('preference/autopairs')
require('preference/sandwich')
require('preference/explore')

-- Stuff that shouldn't have its own file     
vim.opt.wrap = false
vim.opt.linebreak=true
vim.opt.columns=80
vim.opt.timeout = false

-- Apparently shiftwidth disappeared at some point
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

