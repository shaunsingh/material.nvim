local material = {
	-- Common colors

	white =			'#EEFFFF',
	gray =  		'#7f85a3',
	black = 		'#000000',
	red =   		'#ff757f',
	green = 		'#2df4c0',
	--lime =		'#98EE64',
	yellow =		'#ffc777',
	blue =  		'#82aaff',
	paleblue =		'#a3ace2',
	cyan =  		'#04d1f9',
	purple =		'#b4a4f4',
	--violet =		'#B66FFD',
	orange =		'#f67f81',
	pink =  		'#ecb2f0',

	error =			'#FF5370',
	link =			'#80CBC4',
	cursor =		'#5cb4fc',

	none =			'NONE'
}

-- Style specific colors

if vim.g.material_style == 'moonlight' then
	-- Palenight theme style

	material.bg =			'#212539'
	material.bg_alt =		'#1B1E2B'
	material.fg =			'#e4f3fa'
	material.text =			'#e4f3fa'
	material.comments =		'#7486d6'
	material.selection = 		'#403c64'
	material.contrast =		'#1b1d2c'
	material.active =		'#414863'
	material.border =		'#414863'
	material.line_numbers =		'#5b6395'
	material.highlight =		'#a1abe0'
	material.disabled =		'#515772'
	material.accent =		'#d8e9f1'
end

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.material_contrast == false then
    material.sidebar = material.bg
    material.float = material.bg
else
    material.sidebar = material.bg_alt
    material.float = material.bg_alt
end

return material
