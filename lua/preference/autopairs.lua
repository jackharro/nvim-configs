local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')
local autopairs = require('nvim-autopairs')
local utils = require('nvim-autopairs.utils')

autopairs.remove_rule('`')
autopairs.add_rules({
    Rule( "“", "”" )
    	:with_pair(cond.not_before_regex('.*?”')),
    Rule( "‘", "’" )
	:with_pair(function()
	    return function(opts)
		if opts.char == "’" or '”'
		    and utils.is_in_quotes(opts.text, opts.col -1, '’')
		    then
			return false
		end
	    end
	end
    )

})
