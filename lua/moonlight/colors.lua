local moonlight = {
	-- Common colors

	white =			'#EEFFFF',
	gray =  		'#a1abe0',
	black = 		'#000000',
	red =   		'#ff757f',
	green = 		'#2df4c0',
	--lime =		'#98EE64',
	yellow =		'#ffc777',
	paleblue =  		'#d6e7f0',
	cyan =		    '#b994f1',
	blue =  	'#04d1f9',
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

if vim.g.moonlight_style == 'moonlight' then
	-- Palenight theme style

	moonlight.bg =			'#212337'
	moonlight.bg_alt =		'#1B1E2B'
	moonlight.fg =			'#e4f3fa'
	moonlight.text =			'#757dac'
	moonlight.comments =		'#7486d6'
	moonlight.selection = 	'#403c64'
	moonlight.contrast =		'#1b1c2b'
	moonlight.active =		'#414863'
	moonlight.border =		'#414863'
	moonlight.line_numbers =	'#5b6395'
	moonlight.highlight =	'#a1abe0'
	moonlight.disabled =		'#515772'
	moonlight.accent =		'#a3ace1'
end

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.moonlight_contrast == false then
    moonlight.sidebar = moonlight.bg
    moonlight.float = moonlight.bg
else
    moonlight.sidebar = moonlight.bg_alt
    moonlight.float = moonlight.bg_alt
end

return moonlight
