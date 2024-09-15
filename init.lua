vim.api.nvim_create_user_command(
    'EditConfig', 'cd ~/.config/nvim | Ex', 
    {})

require('lazy_plugin_manager')
require('theme')
require('preference')
require('mapping')

-- plugins are last so nvim is fully-featured when troubleshooting
require('plugin')
