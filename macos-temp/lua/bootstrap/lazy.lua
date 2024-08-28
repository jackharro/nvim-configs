-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not (vim.uv or vim.loop).fs_stat(lazypath) then
--     local lazyrepo = "https://github.com/folke/lazy.nvim.git"
--     local error_message = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
--     if vim.v.shell_error ~= 0 then
-- 	vim.api.nvim_echo({
-- 	    { "lazy.lua: failed to clone lazy.nvim from GitHub using git\n", "ErrorMsg" },
-- 	    { error_message, "WarningMsg" },
-- 	    { "\nUse `" .. vim.fn.system({ "echo", '"$0"' }) .. " -u NONE` or refer to manual or --help to skip config loading.\nPress any key to exit…", "ErrorMsg" },
-- 	},
-- 	true, {})
--     end
--     vim.opt.rtp:prepend(lazypath)
-- end

-- https://lazy.folke.io/installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
