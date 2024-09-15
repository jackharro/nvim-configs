-- require('mapping/fileops')
-- require('mapping/textops')
require('mapping/viewops')
require('mapping/scroll')

-- remove s so that sandwich-vim can use it
vim.keymap.set('n', 's', '<nop>', { noremap=true })

-- quick system yank
vim.keymap.set('v', '<S-y>', '"+y', { noremap=true })

-- make Explore easier to reach
-- nvm, it's a builtin feature that user commands can be shortened
-- See :h E813
-- vim.api.nvim_create_user_command('expl', 'Explore', {})
-- vim.api.nvim_create_user_command('explore', 'Explore', {})
-- vim.cmd('command! expl Explore | command! explore Explore')
