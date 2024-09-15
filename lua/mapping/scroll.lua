local guifont_at_startup=vim.o.guifont

if guifont_at_startup ~= nil then
	-- guifont must be set prior to requiring this script
	-- this check silently hides an unset guifont
	-- todo: check vim.o.mouse_enabled

	local function get_details(guifont)
		if guifont ~= nil then
			local font_family, font_size = string.match(guifont, '(.+):h(%d+)')
			if font_family ~= nil or font_size ~= nil then
				return font_family, tonumber(font_size)
			else
				vim.notify('$ find <NVIM_CONFIG_DIR> -name scroll.lua: Cannot zoom: guifont is malformed. Please manually review guifont in your nvim configuration. If guifont is OK, fix the function get_details() in this file.%nfont_family=' .. type(font_family) .. '%nfont_size=' .. type(font_size), vim.log.levels.INFO)
				return nil, nil
			end
		end
	end	

	function change_font_size(zoom_addend, min_or_max)
		local guifont = vim.o.guifont
		local font_family, font_size = get_details(guifont)

		if font_family ~= nil and font_size ~= nil then
			-- do not set zoom_added to 0
			-- todo: error handling: vim.notify('error: zoom_added=0', vim.log.levels.INFO)
			local new_font_size = font_size + zoom_addend
			if zoom_addend < 0 then
				-- min
				if new_font_size < min_or_max then
					new_font_size = min_or_max
				end
			elseif zoom_addend > 0 then
				-- max
				if new_font_size > min_or_max then
					new_font_size = min_or_max
				end
			else
				vim.notify('$ find <NVIM_CONFIG_DIR> -name scroll.lua: Misconfiguration: zoom_addend must not be 0. See the vim.keymap.set calls to change the first parameter. (hint: find this file with $ grep -r "vim.keymap.set" <NVIM_CONFIG_DIR>)')
			end

			vim.o.guifont = font_family .. ':h' .. tostring(new_font_size)
		end
	end

	-- TODO: vim.g.scroll-delta-font-size
	local abs_delta_font_size = 1
	-- zoom out
	-- vim.keymap.set({ 'n', 'i', 'v' }, '<C-ScrollWheelDown>', function() change_font_size(-0.5, 6) end)
	vim.keymap.set({ 'n', 'i', 'v' }, '<C-ScrollWheelDown>', function() change_font_size(-1 * abs_delta_font_size, 6) end)
	
	-- zoom in
	-- vim.keymap.set({ 'n', 'v', 'i' }, '<C-ScrollWheelUp>', function() change_font_size(0.5, 18) end)
	vim.keymap.set({ 'n', 'v', 'i' }, '<C-ScrollWheelUp>', function() change_font_size(abs_delta_font_size, 18) end)
end
