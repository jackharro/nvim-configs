-- To add a new plugin:
-- 1. call rtp_append(plugin_name)
-- 2. require(plugin_name).setup()

-- RunTimePath_APPEND
local function rtp_append(path) 
    vim.opt.runtimepath:append(path)
end

local plugin_dir = vim.fn.stdpath("data") .. '/plugin/'

-- windwp/nvim-ts-autotag
rtp_append(plugin_dir .. 'nvim-ts-autotag')
require('nvim-ts-autotag').setup()
