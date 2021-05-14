local moonlight = require("moonlight.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = moonlight.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = moonlight.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = moonlight.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = moonlight.yellow }, -- any constant
		String =					{ fg = moonlight.green, bg = moonlight.none, style= 'italic' }, -- Any string
		Character =					{ fg = moonlight.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = moonlight.orange }, -- a number constant: 5
		Boolean =					{ fg = moonlight.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = moonlight.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = moonlight.pink }, -- any statement
		Label =						{ fg = moonlight.purple }, -- case, default, etc.
		Operator =					{ fg = moonlight.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = moonlight.cyan }, -- try, catch, throw
		PreProc =					{ fg = moonlight.purple }, -- generic Preprocessor
		Include =					{ fg = moonlight.blue }, -- preprocessor #include
		Define =					{ fg = moonlight.pink }, -- preprocessor #define
		Macro =						{ fg = moonlight.cyan }, -- same as Define
		Typedef =					{ fg = moonlight.red }, -- A typedef
		PreCondit =					{ fg = moonlight.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = moonlight.red }, -- any special symbol
		SpecialChar =				{ fg = moonlight.pink }, -- special character in a constant
		Tag =						{ fg = moonlight.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = moonlight.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = moonlight.gray }, -- special things inside a comment
		Debug =						{ fg = moonlight.red }, -- debugging statements
		Underlined =				{ fg = moonlight.link, bg = moonlight.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = moonlight.disabled }, -- left blank, hidden
		Error =						{ fg = moonlight.error, bg = moonlight.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = moonlight.yellow, bg = moonlight.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = moonlight.link, style = "underline" },
        htmlH1 = { fg = moonlight.cyan, style = "bold" },
        htmlH2 = { fg = moonlight.red, style = "bold" },
        htmlH3 = { fg = moonlight.green, style = "bold" },
        htmlH4 = { fg = moonlight.yellow, style = "bold" },
        htmlH5 = { fg = moonlight.purple, style = "bold" },
        markdownH1 = { fg = moonlight.cyan, style = "bold" },
        markdownH2 = { fg = moonlight.red, style = "bold" },
        markdownH3 = { fg = moonlight.green, style = "bold" },
        markdownH1Delimiter = { fg = moonlight.cyan },
        markdownH2Delimiter = { fg = moonlight.red },
        markdownH3Delimiter = { fg = moonlight.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.moonlight_italic_comments == true then
		syntax.Comment =		{fg = moonlight.comments, bg = moonlight.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = moonlight.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.moonlight_italic_keywords == true then
		syntax.Conditional =		{fg = moonlight.purple, bg = moonlight.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = moonlight.purple, bg = moonlight.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = moonlight.purple, bg = moonlight.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = moonlight.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = moonlight.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = moonlight.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.moonlight_italic_functions == true then
		syntax.Function =		{fg = moonlight.blue, bg = moonlight.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = moonlight.blue} -- normal function names
	end

	if vim.g.moonlight_italic_variables == true then
		Identifier =				{fg = moonlight.gray, bg = moonlight.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = moonlight.gray}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = moonlight.fg, bg = moonlight.float }, -- normal text and background color
		ColorColumn =			{ fg = moonlight.none, bg = moonlight.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = moonlight.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = moonlight.cursor, bg = moonlight.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = moonlight.cursor, bg = moonlight.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = moonlight.blue, bg = moonlight.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = moonlight.green, bg = moonlight.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = moonlight.orange, bg = moonlight.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = moonlight.red, bg = moonlight.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = moonlight.yellow, bg = moonlight.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = moonlight.disabled },
		ErrorMsg =				{ fg = moonlight.none },
		Folded =				{ fg = moonlight.disabled, bg = moonlight.none, style = 'italic' },
		FoldColumn =			{ fg = moonlight.blue },
		IncSearch =				{ fg = moonlight.highlight, bg = moonlight.white, style = 'reverse' },
		LineNr =				{ fg = moonlight.line_numbers },
		CursorLineNr =			{ fg = moonlight.accent },
		MatchParen =			{ fg = moonlight.yellow, bg = moonlight.none, style = 'bold' },
		ModeMsg =				{ fg = moonlight.accent },
		MoreMsg =				{ fg = moonlight.accent },
		NonText =				{ fg = moonlight.disabled },
		Pmenu =					{ fg = moonlight.text, bg = moonlight.contrast },
		PmenuSel =				{ fg = moonlight.accent, bg = moonlight.active },
		PmenuSbar =				{ fg = moonlight.text, bg = moonlight.contrast },
		PmenuThumb =			{ fg = moonlight.fg, bg = moonlight.accent },
		Question =				{ fg = moonlight.green },
		QuickFixLine =			{ fg = moonlight.highlight, bg = moonlight.white, style = 'reverse' },
		qfLineNr =				{ fg = moonlight.highlight, bg = moonlight.white, style = 'reverse' },
		Search =				{ fg = moonlight.highlight, bg = moonlight.white, style = 'reverse' },
		SpecialKey =			{ fg = moonlight.purple },
		SpellBad =				{ fg = moonlight.red, bg = moonlight.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = moonlight.blue, bg = moonlight.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = moonlight.cyan, bg = moonlight.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = moonlight.purple, bg = moonlight.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = moonlight.fg, bg = moonlight.contrast },
		StatusLineNC =  		{ fg = moonlight.text, bg = moonlight.disabled },
		StatusLineTerm =		{ fg = moonlight.fg, bg = moonlight.contrast },
		StatusLineTermNC =		{ fg = moonlight.text, bg = moonlight.disabled },
		TabLineFill =			{ fg = moonlight.fg },
		TablineSel =			{ fg = moonlight.bg, bg = moonlight.accent },
		Tabline =				{ fg = moonlight.fg },
		Title =					{ fg = moonlight.green, bg = moonlight.none, style = 'bold' },
		Visual =				{ fg = moonlight.none, bg = moonlight.selection },
		VisualNOS =				{ fg = moonlight.none, bg = moonlight.selection },
		WarningMsg =			{ fg = moonlight.yellow },
		WildMenu =				{ fg = moonlight.orange, bg = moonlight.none, style = 'bold' },
		CursorColumn =			{ fg = moonlight.none, bg = moonlight.active },
		CursorLine =			{ fg = moonlight.none, bg = moonlight.none },
		ToolbarLine =			{ fg = moonlight.fg, bg = moonlight.bg_alt },
		ToolbarButton =			{ fg = moonlight.fg, bg = moonlight.none, style = 'bold' },
		NormalMode =			{ fg = moonlight.accent, bg = moonlight.none, style = 'reverse' },
		InsertMode =			{ fg = moonlight.green, bg = moonlight.none, style = 'reverse' },
		ReplacelMode =			{ fg = moonlight.red, bg = moonlight.none, style = 'reverse' },
		VisualMode =			{ fg = moonlight.purple, bg = moonlight.none, style = 'reverse' },
		CommandMode =			{ fg = moonlight.gray, bg = moonlight.none, style = 'reverse' },
		Warnings =				{ fg = moonlight.yellow },

        healthError =           { fg = moonlight.error },
        healthSuccess =         { fg = moonlight.green },
        healthWarning =         { fg = moonlight.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = moonlight.blue },
        DashboardHeader =                       { fg = moonlight.red },
        DashboardCenter =                       { fg = moonlight.cyan },
        DashboardFooter =                       { fg = moonlight.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.moonlight_disable_background == true then
		editor.Normal =				{ fg = moonlight.fg, bg = moonlight.none } -- normal text and background color
		editor.SignColumn =			{ fg = moonlight.fg, bg = moonlight.none }
    else
		editor.Normal =				{ fg = moonlight.fg, bg = moonlight.bg } -- normal text and background color
		editor.SignColumn =			{ fg = moonlight.fg, bg = moonlight.bg }
    end

    -- Remove window split borders
    if vim.g.moonlight_borders == true then
		editor.VertSplit =				{ fg = moonlight.border }
    else
		editor.VertSplit =				{ fg = moonlight.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = moonlight.black
	vim.g.terminal_color_1 = moonlight.red
	vim.g.terminal_color_2 = moonlight.green
	vim.g.terminal_color_3 = moonlight.yellow
	vim.g.terminal_color_4 = moonlight.blue
	vim.g.terminal_color_5 = moonlight.purple
	vim.g.terminal_color_6 = moonlight.cyan
	vim.g.terminal_color_7 = moonlight.white
	vim.g.terminal_color_8 = moonlight.gray
	vim.g.terminal_color_9 = moonlight.red
	vim.g.terminal_color_10 = moonlight.green
	vim.g.terminal_color_11 = moonlight.yellow
	vim.g.terminal_color_12 = moonlight.blue
	vim.g.terminal_color_13 = moonlight.purple
	vim.g.terminal_color_14 = moonlight.cyan
	vim.g.terminal_color_15 = moonlight.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = moonlight.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = moonlight.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = moonlight.orange },    -- For booleans.
        TSCharacter=                { fg = moonlight.orange },    -- For characters.
        TSConstructor =             { fg = moonlight.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = moonlight.yellow },    -- For constants
        TSConstBuiltin =            { fg = moonlight.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = moonlight.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = moonlight.error },    -- For syntax/parser errors.
        TSException =               { fg = moonlight.yellow },    -- For exception related keywords.
        TSField =                   { fg = moonlight.gray }, -- For fields.
        TSFloat =                   { fg = moonlight.red },    -- For floats.
        TSFuncMacro =               { fg = moonlight.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = moonlight.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = moonlight.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = moonlight.yellow },    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        TSNumber =                  { fg = moonlight.orange },    -- For all numbers
        TSOperator =                { fg = moonlight.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = moonlight.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = moonlight.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = moonlight.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = moonlight.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = moonlight.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = moonlight.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = moonlight.green },    -- For strings.
        TSStringRegex =             { fg = moonlight.blue }, -- For regexes.
        TSStringEscape =            { fg = moonlight.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = moonlight.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = moonlight.purple },    -- For types.
        TSTypeBuiltin =             { fg = moonlight.purple },    -- For builtin types.
        TSTag =                     { fg = moonlight.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = moonlight.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = moonlight.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = moonlight.yellow }, -- FIXME
        TSEmphasis =                { fg = moonlight.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = moonlight.fg, bg = moonlight.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = moonlight.paleblue, bg = moonlight.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = moonlight.fg },    -- Literal text.
        TSURI =                     { fg = moonlight.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.moonlight_italic_comments == true then
        treesitter.TSComment=                  { fg = moonlight.comments , bg = moonlight.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = moonlight.comments }    -- For comment blocks.
    end

    if vim.g.moonlight_italic_keywords == true then
        treesitter.TSConditional =             { fg = moonlight.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = moonlight.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = moonlight.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = moonlight.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = moonlight.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = moonlight.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = moonlight.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = moonlight.purple } -- For keywords used to define a fuction.
    end

    if vim.g.moonlight_italic_functions == true then
        treesitter.TSFunction =                { fg = moonlight.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = moonlight.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = moonlight.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = moonlight.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = moonlight.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = moonlight.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.moonlight_italic_variables == true then
        treesitter.TSVariable =                { fg = moonlight.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = moonlight.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = moonlight.gray } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = moonlight.gray } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = moonlight.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = moonlight.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = moonlight.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = moonlight.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = moonlight.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = moonlight.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = moonlight.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = moonlight.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = moonlight.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = moonlight.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = moonlight.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = moonlight.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = moonlight.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = moonlight.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = moonlight.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = moonlight.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = moonlight.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = moonlight.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = moonlight.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = moonlight.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = moonlight.accent, bg = moonlight.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = moonlight.accent, bg = moonlight.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = moonlight.accent, bg = moonlight.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = moonlight.text },
        LspTroubleCount =                       { fg = moonlight.purple, bg = moonlight.active },
        LspTroubleNormal =                      { fg = moonlight.fg, bg = moonlight.sidebar },

        -- Diff
        diffAdded =                             { fg = moonlight.green },
        diffRemoved =                           { fg = moonlight.red },
        diffChanged =                           { fg = moonlight.yellow },
        diffOldFile =                           { fg = moonlight.yelow },
        diffNewFile =                           { fg = moonlight.orange },
        diffFile =                              { fg = moonlight.blue },
        diffLine =                              { fg = moonlight.comments },
        diffIndexLine =                         { fg = moonlight.purple },

        -- Neogit
        NeogitBranch =                          { fg = moonlight.paleblue },
        NeogitRemote =                          { fg = moonlight.purple },
        NeogitHunkHeader =                      { fg = moonlight.fg, bg = moonlight.highlight },
        NeogitHunkHeaderHighlight =             { fg = moonlight.blue, bg = moonlight.contrast },
        NeogitDiffContextHighlight =            { fg = moonlight.text, bg = moonlight.contrast },
        NeogitDiffDeleteHighlight =             { fg = moonlight.red },
        NeogitDiffAddHighlight =                { fg = moonlight.green },

        -- GitGutter
        GitGutterAdd =                          { fg = moonlight.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = moonlight.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = moonlight.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = moonlight.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = moonlight.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = moonlight.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = moonlight.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = moonlight.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = moonlight.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = moonlight.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = moonlight.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = moonlight.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = moonlight.cyan },
        TelescopeResultsBorder =                { fg = moonlight.purple },
        TelescopePreviewBorder =                { fg = moonlight.green },
        TelescopeSelectionCaret =               { fg = moonlight.purple },
        TelescopeSelection =                    { fg = moonlight.purple },
        TelescopeMatching =                     { fg = moonlight.cyan },
        TelescopeNormal =                       { fg = moonlight.fg, bg = moonlight.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = moonlight.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = moonlight.yellow },
        NvimTreeGitNew =                        { fg = moonlight.green },
        NvimTreeImageFile =                     { fg = moonlight.yellow },
        NvimTreeExecFile =                      { fg = moonlight.green },
        NvimTreeSpecialFile =                   { fg = moonlight.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = moonlight.paleblue },
        NvimTreeEmptyFolderName=                { fg = moonlight.disabled },
        NvimTreeFolderIcon=                     { fg = moonlight.accent },
        NvimTreeIndentMarker =                  { fg  = moonlight.disabled },
        LspDiagnosticsError =                   { fg = moonlight.error },
        LspDiagnosticsWarning =                 { fg = moonlight.yellow },
        LspDiagnosticsInformation =             { fg = moonlight.paleblue },
        LspDiagnosticsHint =                    { fg = moonlight.purple },

        -- WhichKey
        WhichKey =                              { fg = moonlight.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = moonlight.text },
        WhichKeyDesc =                          { fg = moonlight.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = moonlight.fg },
        WhichKeyFloating =                      { bg = moonlight.float },
        WhichKeyFloat =                         { bg = moonlight.float },

        -- LspSaga
        DiagnosticError =                       { fg = moonlight.error },
        DiagnosticWarning =                     { fg = moonlight.yellow },
        DiagnosticInformation =                 { fg = moonlight.paleblue },
        DiagnosticHint =                        { fg = moonlight.purple },
        DiagnosticTruncateLine =                { fg = moonlight.fg },
        LspFloatWinNormal =                     { bg = moonlight.contrast },
        LspFloatWinBorder =                     { fg = moonlight.purple },
        LspSagaBorderTitle =                    { fg = moonlight.cyan },
        LspSagaHoverBorder =                    { fg = moonlight.paleblue },
        LspSagaRenameBorder =                   { fg = moonlight.green },
        LspSagaDefPreviewBorder =               { fg = moonlight.green },
        LspSagaCodeActionBorder =               { fg = moonlight.blue },
        LspSagaFinderSelection =                { fg = moonlight.green },
        LspSagaCodeActionTitle =                { fg = moonlight.paleblue },
        LspSagaCodeActionContent =              { fg = moonlight.purple },
        LspSagaSignatureHelpBorder =            { fg = moonlight.pink },
        ReferencesCount =                       { fg = moonlight.purple },
        DefinitionCount =                       { fg = moonlight.purple },
        DefinitionIcon =                        { fg = moonlight.blue },
        ReferencesIcon =                        { fg = moonlight.blue },
        TargetWord =                            { fg = moonlight.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = moonlight.accent },
        BufferLineFill =                        { bg = moonlight.bg_alt },

        -- Sneak
        Sneak =                                 { fg = moonlight.bg, bg = moonlight.accent },
        SneakScope =                            { bg = moonlight.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = moonlight.highlight },
        IndentBlanklineContextChar =            { fg = moonlight.disabled },
	
	 -- Nvim dap
         DapBreakpoint =                         { fg = moonlight.red },
         DapStopped =                            { fg = moonlight.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.moonlight_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = moonlight.fg, bg = moonlight.none }
        else
            plugins.NvimTreeNormal =                        { fg = moonlight.fg, bg = moonlight.sidebar }
        end

    return plugins

end

return theme
