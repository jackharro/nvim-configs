-- Horizontal scrolling
vim.keymap.set({'i', 'n'}, '<S-ScrollWheelUp>', '<C-[>z4h')
vim.keymap.set({'i', 'n'}, '<S-ScrollWheelDown>', '<C-[>z4l')

-- word wrap
vim.keymap.set({'i', 'n'}, '<C-S-W>', function()
        vim.opt.wrap = not vim.opt.wrap:get() end)



-- zoom
-- op is 'big' or 'small'
local change_font = function(size_diff) 
    local s = vim.opt.guifont:get().string
    -- Does this grab the last colon?
    local _, i = string.find(s, ':')
    local font = string.sub(s, 1, i)
    local size = tonumber(string.sub(s, i, s.len()))
    if op == 'big' then
        new_size = size + c_diff
    else if op == 'small' then
        new_size = size - c_diff
    else
        return
    end
    local new_s = font .. tostring(new_size)
    vim.opt.guifont = s
end
end

vim.keymap.set({'i', 'n' }, '<C-ScrollWheelUp>', function() change_font('big', 1) end)
