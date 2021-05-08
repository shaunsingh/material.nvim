local material = {
	-- Common colors

	white =			'#EEFFFF',
	gray =  		'#717CB4',
	black = 		'#000000',
	red =   		'#F07178',
	green = 		'#C3E88D',
	--lime =		'#98EE64',
	yellow =		'#FFCB6B',
	blue =  		'#82AAFF',
	paleblue =		'#B0C9FF',
	cyan =  		'#89DDFF',
	purple =		'#C792EA',
	--violet =		'#B66FFD',
	orange =		'#F78C6C',
	pink =  		'#FF9CAC',

	error =			'#FF5370',
	link =			'#80CBC4',
	cursor =		'#FFCC00',

	none =			'NONE'
}

-- Style specific colors

if vim.g.material_style == 'moonlight' then
	-- Palenight theme style

	material.bg =			'#011627'
	material.bg_alt =		'#1B1E2B'
	material.fg =			'#c3ccdc'
	material.text =			'#676E95'
	material.comments =		'#676E95'
	material.selection = 		'#717CB4'
	material.contrast =		'#202331'
	material.active =		'#414863'
	material.border =		'#414863'
	material.line_numbers =		'#3A3F58'
	material.highlight =		'#444267'
	material.disabled =		'#515772'
	material.accent =		'#AB47BC'
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
