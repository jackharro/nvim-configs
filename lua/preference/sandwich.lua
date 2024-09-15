vim.cmd([[
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
call extend(g:sandwich#recipes, [
\ {'buns': ['‘', '’'], 'quoteescape': 1, 'expand_range': 0, 'linewise': 0, 'nesting': 0},
\ {'buns': ['“', '”'], 'quoteescape': 1, 'expand_range': 0, 'linewise': 0, 'nesting': 0}
\ ])
]])
