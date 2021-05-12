local colors = require('moonlight.colors')

local moonlight = {}

moonlight.normal = {
	a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
	c = {fg = colors.fg, bg = colors.selection},
}

moonlight.insert = {
	a = {fg = colors.bg, bg = colors.green, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

moonlight.visual = {
	a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

moonlight.replace = {
	a = {fg = colors.bg, bg = colors.red, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

moonlight.command = {
	a = {fg = colors.bg, bg = colors.yellow, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

moonlight.inactive = {
  a = {fg = colors.disabled, bg = colors.bg, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.selection}
}

return moonlight
