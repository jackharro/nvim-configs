-- https://neovim.discourse.group/t/help-needed-customizing-nvim-terminal-title/721/
-- https://www.reddit.com/r/neovim/comments/q2s3t1/comment/hfnevrm
vim.opt.title = true
--[[ vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function(ev)
    end
})
]]
vim.api.nvim_create_autocmd( { "BufEnter", "BufFilePost", "BufWinEnter", "TabEnter", "VimEnter", "BufWritePost" }, {
    callback = function(ev)
        local fname = vim.fn.expand('%f')
            if fname == '' then
                vim.opt.titlestring = 'Neovide'
            else
                vim.opt.titlestring = fname
            end
    end
})
