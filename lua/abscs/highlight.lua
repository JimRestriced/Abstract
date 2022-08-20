
--[[ local colors = require "abscs.themes.default" ]]
--NOTE: default theme needs some serious refactorization. for now use aqua
local colors = require "abscs.themes.aqua"

local theme_name = vim.g.abscs_theme_name

if theme_name == "aqua" then
	colors = require "abscs.themes.aqua"
	goto continue
end

::continue::
local config = require "abscs.config"
local M = {}

M.base = {

	-----------------------------------------
	--  Editor settings
	-----------------------------------------

	--  completion menu
	----------------------------------
	Pmenu              = { fg=colors.gray3,    bg=colors.bg }, -- completion window border color and background color
	PmenuSel           = { fg=colors.black,    bg=colors.cyan6 },
	PmenuSbar          = { bg=colors.gray },
	PmenuThumb         = { bg=colors.cyan6 },
	----------------------------------

	NormalFloat        = { fg=colors.white,    bg=colors.bg },        -- floating window
	FloatBorder        = { fg=colors.gray3,    bg = "NONE" },
	Folded             = { fg=colors.cl_bg,    bg=colors.black2 },
	VertSplit          = { fg=colors.bg,       bg=colors.gray3 },
	LineNr             = { fg=colors.line_fg,  bg=colors.bg},         -- number column
	CursorLineNr       = { fg=colors.black,    bg=colors.cl_bg, style = "bold" },
	Cursor             = { fg=colors.yellow,   bg=colors.bg },
	CursorColumn       = { fg = "NONE",        bg = "NONE" },
	FoldColumn         = { fg=colors.line_fg },
	CursorLine         = { bg=colors.black2 },
	-- CursorIM           =  { fg=colors.cursor_fg, bg=colors.cursor_bg },
	SignColumn         = { fg=colors.bg,  bg=colors.bg },
	ColorColumn        = { bg=colors.bg },
	Conceal            = { fg=colors.fg },-- { bg = config.transparent_background and "NONE" or colors.bg },
	QuickFixLine       = { bg=colors.gray1 },
	Repeat             = { fg=colors.cyan4 },
	Whitespace         = { fg=colors.non_text },
	WildMenu           = { fg=colors.fg },
	WarningMsg         = { fg=colors.gray,      bg=colors.orange3 },
	Search             = { fg=colors.SearchFG,  bg=colors.SearchBg },
	IncSearch          = { fg=colors.red,       bg=colors.SearchFG },
	CurSearch          = { fg=colors.SearchFG,  bg=colors.red },
	lCursor            = { fg=colors.cursor_fg, bg=colors.cursor_bg },
	TermCursor         = { fg=colors.cursor_fg, bg=colors.cursor_bg },
	TermCursorNC       = { fg=colors.cursor_fg, bg=colors.cursor_bg },
	StatusLine         = { fg=colors.black2,    bg=colors.gray6 },
	StatusLineNC       = { fg=colors.gray7,     bg=colors.gray },
	Delimiter          = { fg=colors.gray7 },
	DiffAdd            = { fg=colors.green1 },
	DiffAdded          = { fg=colors.green1 },
	DiffChange         = { fg=colors.orange2 },
	DiffDelete         = { fg=colors.red1 },
	DiffRemoved        = { fg=colors.red1 },
	DiffText           = { fg=colors.cyan6 },
	DiffFile           = { fg=colors.purple2 },
	StatusLineTerm     = { fg=colors.cyan5, bg=colors.gray },
	StatusLineTermNC   = { fg=colors.gray7, bg=colors.gray },
	StatusLineSeparator= { fg=colors.dark },
	Underline          = { style = "underline" },
	Label              = { fg=colors.Label },-- underline Highlighted defination
	MatchParen         = { fg=colors.white1, bg=colors.cyan6 },
	MatchParenCur      = { style = "underline" },
	MatchWord          = { style = "underline" },
	MatchWordCur       = { style = "underline" },
	MoreMsg            = { fg=colors.orange2 },
	ModeMsg            = { fg=colors.fg, bg=colors.bg },
	MsgArea            = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	MsgSeparator       = { fg=colors.fg, bg=colors.bg },
	Normal             = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	NormalNC           = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	Error              = { fg=colors.red1, bg=colors.bg, style = "bold" },
	ErrorMsg           = { fg=colors.ErrorMsg,   bg=colors.bg, style = "bold" },-- command error message
	Debug              = { fg=colors.fg },
	Visual             = { fg = "NONE", bg=colors.Visual, style = "bold" },
	Substitute         = { fg=colors.gray6, bg=colors.orange4 },
	VisualNOS          = { fg=colors.selection_fg, bg=colors.selection_bg },
	-- DiffIndexLine = { fg=colors.gray3 },
	-- Directory     = { fg=colors.cyan6 },
	-- EndOfBuffer   = { fg=colors.bg },
	-----------------------------------------
	--  end Editor settings
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------
	Boolean            = { fg=colors.Boolean },
	Character          = { fg=colors.Character },
	Comment            = { fg=colors.Comment, style = "italic" },
	Conditional        = { fg=colors.Conditional },
	Constant           = { fg=colors.Constant },
	Define             = { fg=colors.Define},
	Exception          = { fg=colors.Exception },
	Float              = { fg=colors.Float },
	Identifier         = { fg=colors.Identifier },
	Ignore             = { fg=colors.Ignore },
	Macro              = { fg=colors.Macro },
	NonText            = { fg=colors.non_text },
	Number             = { fg=colors.purple4 },
	Operator           = { fg=colors.cyan3 },
	PreCondit          = { fg=colors.purple4 },
	PreProc            = { fg=colors.PreProc },
	Question           = { fg=colors.gray },
	Special            = { fg=colors.orange3 },
	SpecialChar        = { fg=colors.gray5 },
	SpecialComment     = { fg=colors.cyan5 },
	SpecialKey         = { fg=colors.gray7,   style = "bold" },
	SpellBad           = { fg=colors.red1,    style = "underline" },
	SpellCap           = { fg=colors.orange2, style = "underline" },
	SpellLocal         = { fg=colors.green1,  style = "underline" },
	SpellRare          = { fg=colors.purple2, style = "underline" },
	Statement          = { fg=colors.red1 },
	StorageClass       = { fg=colors.pink1 },
	String             = { fg=colors.orange5 },
	Structure          = { fg=colors.cyan4 },
	TabLine            = { fg=colors.gray7 },
	TabLineFill        = { fg=colors.gray7 },
	TabLineSel         = { fg=colors.fg },
	Tag                = { fg=colors.gray7 },
	Title              = { fg=colors.gray7 },
	Todo               = { fg=colors.TodoFG, bg="NONE", style = "bold" },
	Type               = { fg=colors.Type, style="NONE" },
	Typedef            = { fg=colors.Typedef },
	Variable           = { fg=colors.Variable },
	URI                = { fg=colors.URI,        style="underline" },
	Parameter          = { fg=colors.Parameter,  style="italic" },
	Keyword            = { fg=colors.Keyword,    style="NONE" },
	Include            = { fg=colors.Include },
	Function           = { fg=colors.Function },
	KeywordFunction    = { fg=colors.KeywordFunction, style="NONE" },
	KeywordReturn      = { fg=colors.KeywordReturn },
	KeywordOperator    = { fg=colors.KeywordOperator },
	Method             = { fg=colors.Method },
	Constructor        = { fg=colors.Constructor },
	FuncBuiltin        = { fg=colors.FuncBuiltin },
	Warning            = { fg=colors.Warning },
	Note               = { fg=colors.Note },
	TagAttribute       = { fg=colors.TagAttribute },
	Annotation         = { fg=colors.Annotation },
	Attribute          = { fg=colors.Attribute },
	ConstBuiltin       = { fg=colors.ConstBuiltin },
	ConstMacro         = { fg=colors.ConstMacro },
	Field              = { fg=colors.Field },
	FuncMacro          = { fg=colors.FuncMacro },
	Literal            = { fg=colors.Literal },
	Namespace          = { fg=colors.Namespace },
	Property           = { fg=colors.Property },
	PunctBracket       = { fg=colors.PunctBracket },
	TableBlock         = { fg=colors.TableBlock },
	PunctDelimiter     = { fg=colors.PunctDelimiter },
	PunctSpecial       = { fg=colors.PunctSpecial },
	StringEscape       = { fg=colors.StringEscape },
	StringRegex        = { fg=colors.StringRegex },
	Strong             = { fg=colors.Strong },
	Symbol             = { fg=colors.Symbol },
	TagDelimiter       = { fg=colors.TagDelimiter },
	Text               = { fg=colors.Text },
	QueryLinterError   = { fg=colors.QueryLinterError },
	TypeBuiltin        = { fg=colors.TypeBuiltin },
	VariableBuiltin    = { fg=colors.VariableBuiltin },
	ParameterReference = { fg=colors.ParameterReference },
	Emphasis           = { style = "italic" },
	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------

}


M.plugins = {

	-----------------------------------------
	-- PLUGIN SPECIFIC
	-----------------------------------------

	-- Buffer:
	-----------------------------------------
	BufferCurrent        = { fg=colors.fg,      bg = "#141414" },
	BufferCurrentIndex   = { fg=colors.fg,      bg=colors.bg },
	BufferCurrentMod     = { fg=colors.yellow1, bg=colors.bg },
	BufferCurrentSign    = { fg=colors.blue1,   bg=colors.bg },
	BufferCurrentTarget  = { fg=colors.red1,    bg=colors.bg, style = "bold" },
	BufferInactive       = { fg=colors.gray3,   bg=colors.dark },
	BufferInactiveIndex  = { fg=colors.gray3,   bg=colors.dark },
	BufferInactiveMod    = { fg=colors.yellow1, bg=colors.dark },
	BufferInactiveSign   = { fg=colors.gray3,   bg=colors.dark },
	BufferInactiveTarget = { fg=colors.red1,    bg=colors.dark, style = "bold" },
	BufferVisible        = { fg=colors.fg,      bg=colors.bg },
	BufferVisibleIndex   = { fg=colors.fg,      bg=colors.bg },
	BufferVisibleMod     = { fg=colors.yellow1, bg=colors.bg },
	BufferVisibleSign    = { fg=colors.gray3,   bg=colors.bg },
	BufferVisibleTarget  = { fg=colors.red1,    bg=colors.bg, style = "bold" },
	BufferLineFill       = { fg=colors.fg,      bg =colors.black2, style = "bold" },
	BuffNumbers          = { fg=colors.red,     bg =colors.black2 },

	-- Tabs
	TabSelectedFG        = { fg=colors.white,   bg =colors.black2 },
	TabSelectedBG        = { fg=colors.green,   bg =colors.bg },

	TabFG                = { fg=colors.white,   bg =colors.black2 },
	TabBG                = { fg=colors.black2,  bg =colors.black2 },
	-----------------------------------------


	-- Cmp: github.com/hrsh7th/nvim-cmp
	-----------------------------------------
	CmpDocumentation       = { fg=colors.fg,    bg=colors.none },
	CmpDocumentationBorder = { fg=colors.gray3, bg=colors.none },
	CmpItemAbbr            = { fg=colors.fg,    bg=colors.none },
	CmpItemAbbrDeprecated  = { fg=colors.gray3, bg=colors.none },
	CmpItemAbbrMatch       = { fg=colors.cyan3, bg=colors.none },
	CmpItemAbbrMatchFuzzy  = { fg=colors.cyan3, bg=colors.none },
	CmpItemKind            = { fg=colors.cyan6, bg=colors.none },
	CmpItemMenu            = { fg=colors.gray6, bg=colors.none },
	-----------------------------------------


	-- Dashboard: github.com/glepnir/dashboard-nvim
	-----------------------------------------
	DashboardCenter = { fg=colors.purple2 },
	DashboardFooter = { fg=colors.cyan3 },
	DashboardHeader = { fg=colors.cyan6 },
	-----------------------------------------


	--  Debug:
	-----------------------------------------
	debugBreakpoint = { fg=colors.red1, style = "reverse" },
	debugPc         = { bg=colors.cyan3 },
	-----------------------------------------


	-- Diffview
	-----------------------------------------
	DiffViewNormal             = { fg=colors.gray3, bg=colors.dark },
	DiffviewFilePanelDeletion  = { fg=colors.red4 },
	DiffviewFilePanelInsertion = { fg=colors.diff_add },
	DiffviewStatusAdded        = { fg=colors.diff_add },
	DiffviewStatusDeleted      = { fg=colors.red4 },
	DiffviewStatusModified     = { fg=colors.diff_change },
	DiffviewStatusRenamed      = { fg=colors.diff_change },
	DiffviewVertSplit          = { bg=colors.bg },
	-----------------------------------------


	-- Gitsigns: github.com/lewis6991/gitsigns.nvim
	-----------------------------------------
	GitSignsAdd    = { fg=colors.GitAddFG,    bg=colors.GitAddBG },
	GitSignsChange = { fg=colors.GitChangeFG, bg=colors.GitChangeBG },
	GitSignsDelete = { fg=colors.GitDeleteFG, bg=colors.GitDeleteBG },
	-----------------------------------------


	-- gitgutter: github.com/airblade/vim-gitgutter
	-----------------------------------------
	GitGutterAdd    = { fg=colors.diff_add },
	GitGutterChange = { fg=colors.diff_change },
	GitGutterDelete = { fg=colors.red4 },
	-----------------------------------------


	-- Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim
	-----------------------------------------
	IndentBlanklineChar        = { fg=colors.IndentBlanklineChar },
	IndentBlanklineContextChar = { fg=colors.IndentBlanklineContextChar },-- current Curosr Highlighted function
	IndentBlanklineSpaceChar   = { fg=colors.IndentBlanklineSpaceChar }, -- cursor color on indent space
	-- IndentBlanklineSpaceCharBlankline = { fg= "#ff0000" },
	-- IndentBlanklineContextStart       = { fg= colors.yellow },
	IndentBlanklineIndent1     = { fg=colors.IndentBlanklineIndent1 },
	IndentBlanklineIndent2     = { fg=colors.IndentBlanklineIndent2 },
	IndentBlanklineIndent3     = { fg=colors.IndentBlanklineIndent3 },
	IndentBlanklineIndent4     = { fg=colors.IndentBlanklineIndent4 },
	IndentBlanklineIndent5     = { fg=colors.IndentBlanklineIndent5 },
	IndentBlanklineIndent6     = { fg=colors.IndentBlanklineIndent6 },
	IndentBlanklineIndent7     = { fg=colors.IndentBlanklineIndent7 },
	IndentBlanklineIndent8     = { fg=colors.IndentBlanklineIndent8 },
	-----------------------------------------


	-- Lsp: neovim.io/doc/user/lsp.html
	-----------------------------------------
	DiagnosticVirtualTextInfo = { fg=colors.orange6 },
	DiagnosticHint            = { fg=colors.blue1 },
	DiagnosticError           = { fg=colors.red2 },
	DiagnosticInfo            = { fg=colors.yellow1 },
	DiagnosticVirtualTextWarn = { fg=colors.orange6 },
	DiagnosticWarn            = { fg=colors.orange1 },
	DiagnosticFloatingError   = { fg=colors.red2 },
	DiagnosticFloatingHint    = { fg=colors.blue1 },
	DiagnosticFloatingInfo    = { fg=colors.yellow1 },
	DiagnosticFloatingWarn    = { fg=colors.orange1 },
	DiagnosticSignError       = { fg=colors.red2,    bg=colors.bg },
	DiagnosticSignHint        = { fg=colors.blue1,   bg=colors.bg },
	DiagnosticSignInfo        = { fg=colors.yellow1, bg=colors.bg },
	DiagnosticSignWarn        = { fg=colors.orange1, bg=colors.bg },
	DiagnosticUnderlineError  = { style="underline" },
	DiagnosticUnderlineHint   = { style="underline" },
	DiagnosticUnderlineInfo   = { style="underline" },
	DiagnosticUnderlineWarn   = { style="underline" },
	DiagnosticVirtualTextError= { fg=colors.DiagnosticVirtualTextError },
	DiagnosticVirtualTextHint = { fg=colors.gray1 },
	-----------------------------------------


	-- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
	-----------------------------------------
	LspSagaLightBulb = { fg=colors.green1, bg='NONE' },


	-- fidget.nvim: https://github.com/j-hui/fidget.nvim
	-----------------------------------------
	FidgetTitle = { fg=colors.FidgetTitle, bg='NONE' },
	FidgetTask  = { fg=colors.FidgetTask,  bg='NONE' },
	-----------------------------------------


	-- vim-indent-guides: github.com/nathanaelkane/vim-indent-guides
	-----------------------------------------
	IndentGuidesEven = { fg=colors.white1 },
	IndentGuidesOdd  = { fg=colors.gray7 },
	-----------------------------------------


	-- flutter-tools.nvim: github.com/akinsho/flutter-tools.nvim/
	-----------------------------------------
	FlutterWidgetGuides = { fg=colors.gray4 },
	-----------------------------------------


	-- Neogit: github.com/TimUntersberger/neogit
	-----------------------------------------
	NeogitBranch               = { fg=colors.purple3 },
	NeogitRemote               = { fg=colors.purple2 },
	NeogitHunkHeader           = { fg=colors.accent,   bg=colors.dark },
	NeogitDiffContext          = { fg=colors.accent,   bg=colors.bg },
	NeogitDiffAdd              = { fg=colors.diff_add, bg=colors.dark },
	NeogitDiffDelete           = { fg=colors.red4,     bg=colors.dark },
	-- Neogit...Highlight is when group is focused
	NeogitHunkHeaderHighlight  = { fg=colors.accent,   bg=colors.dark },
	NeogitDiffContextHighlight = { fg=colors.accent,   bg=colors.bg },
	NeogitDiffAddHighlight     = { fg=colors.diff_add, bg=colors.dark },
	NeogitDiffDeleteHighlight  = { fg=colors.red4,     bg=colors.dark },
	-----------------------------------------


	-- Nvim-tree: github.com/kyazdani42/nvim-tree.lua
	-----------------------------------------
	NvimTreeCursorLine   = { fg=colors.black, bg=colors.cyan5 },
	NvimTreeExecFile     = { fg=colors.green1 },
	NvimTreeFolderIcon   = { fg=colors.cyan6 },
	NvimTreeFolderName   = { fg=colors.cyan6 },
	NvimTreeGitDeleted   = { fg=colors.red4 },
	NvimTreeGitDirty     = { fg=colors.diff_add },
	NvimTreeGitMerge     = { fg=colors.diff_change },
	NvimTreeGitNew       = { fg=colors.diff_add },
	NvimTreeGitRenamed   = { fg=colors.diff_change },
	NvimTreeGitStaged    = { fg=colors.diff_add },
	NvimTreeImageFile    = { fg=colors.purple2 },
	NvimTreeIndentMarker = { fg=colors.gray3 },
	NvimTreeNormal       = { fg=colors.accent, bg=colors.bg },
	NvimTreeOpenedFolderName = { fg=colors.cyan6, style = "italic" },
	NvimTreeRootFolder   = { fg=colors.gray3, style = "bold" },
	NvimTreeSpecialFile  = { fg=colors.orange2 },
	NvimTreeSymlink      = { fg=colors.cyan3 },
	NvimTreeVertSplit    = { fg=colors.gray1, bg=colors.bg },
	-----------------------------------------


	-- telescope: github.com/nvim-telescope/telescope.nvim
	-----------------------------------------
	TelescopeBorder       = { fg=colors.gray3, bg = config.transparent_background and "NONE" or colors.bg, },
	TelescopeMatching     = { fg=colors.orange },
	TelescopePromptPrefix = { fg=colors.cyan2 },
	TelescopeSelection    = { fg=colors.white, bg=colors.gray },
	-----------------------------------------


	-- https://github.com/folke/trouble.nvim
	-----------------------------------------
	-- TroubleTextInformation = { fg=colors.red, bg=colors.green },
	TroubleFile      = { fg=colors.black,   bg=colors.gray6   },    -- the source file that has error
	TroubleFoldIcon  = { fg=colors.red,     bg=colors.bg },    -- fold icon color
	TroubleTextError = { fg=colors.red3,    bg=colors.bg },    -- error info text
	TroubleNormal    = { fg=colors.white,   bg=colors.bg },    -- background color of trouble window
	TroubleLocation  = { fg=colors.cyan,    bg=colors.bg },    -- location of error
	TroubleIndent    = { fg=colors.white,   bg=colors.bg },    -- indent color
	TroubleSignError = { fg=colors.red,     bg=colors.bg },    -- error sign color
	TroubleCount     = { fg=colors.red,     bg=colors.bg },
	TroubleCode      = { fg=colors.yellow5, bg=colors.bg },
	-- TroubleError       = { fg=colors.red, bg=colors.green },
	-- TroubleSignWarning = { fg=colors.red, bg=colors.green },
	-- TroubleWarning     = { fg=colors.red, bg=colors.green },
	-- TroublePreview     = { fg=colors.red, bg=colors.green },
	-- TroubleSource      = { fg=colors.red, bg=colors.green },
	-- TroubleSignHint    = { fg=colors.red, bg=colors.green },
	-- TroubleSignOther   = { fg=colors.red, bg=colors.green },
	-- TroubleTextWarning = { fg=colors.red, bg=colors.green },
	-- TroubleInformation = { fg=colors.red, bg=colors.green },
	-- TroubleHint        = { fg=colors.red, bg=colors.green },
	-- TroubleTextHint    = { fg=colors.red, bg=colors.green },
	-- TroubleText        = { fg=colors.red, bg=colors.green },
	-- TroubleSignInformation = { fg=colors.red, bg=colors.green },
	-----------------------------------------

	-----------------------------------------
	-- end PLUGIN SPECIFIC
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------


	-- Markdown
	-----------------------------------------
	markdownH1               = { fg=colors.cyan6 },
	markdownH2               = { fg=colors.cyan6 },
	markdownH3               = { fg=colors.cyan6 },
	markdownH4               = { fg=colors.cyan6 },
	markdownH5               = { fg=colors.cyan6 },
	markdownH6               = { fg=colors.cyan6 },
	markdownId               = { fg=colors.purple2 },
	markdownUrl              = { fg=colors.purple2, style = "underline" },
	markdownRule             = { fg=colors.accent },
	markdownBold             = { fg=colors.gray7, style = "bold" },
	markdownCode             = { fg=colors.orange3 },
	markdownItalic           = { fg= colors.gray7, style = "italic" },
	markdownCodeBlock        = { fg=colors.orange3 },
	markdownCodeError        = { fg=colors.red3 },
	markdownLinkText         = { fg=colors.cyan6 },
	markdownListMarker       = { fg=colors.red1 },
	markdownCodeSpecial      = { fg=colors.orange2 },
	markdownCodeDelimiter    = { fg=colors.green1 },
	markdownBlockquote       = { fg=colors.accent },
	markdownIdDeclaration    = { fg=colors.cyan6 },
	markdownIdDelimiter      = { fg=colors.gray6 },
	markdownLinkDelimiter    = { fg=colors.gray6 },
	markdownHeadingRule      = { fg=colors.accent },
	markdownHeadingDelimiter = { fg=colors.cyan6 },
	markdownUrlTitleDelimiter= { fg=colors.cyan3 },
	markdownOrderedListMarker= { fg=colors.red1 },


	-- Python Language
	-----------------------------------------
	-- pythonConditional = { fg=colors.Conditional },
	-- pythonException   = { fg=colors.Exception },
	-- pythonFunction    = { fg=colors.Function },
	-- pythonInclude     = { fg=colors.Include },
	-- pythonOperator    = { fg=colors.Operator },
	-- pythonStatement   = { fg=colors.Statement },
	-- pythonBoolean     = { fg=colors.Boolean },

	-- pythonTSRepeat          = { fg=colors.Repeat },
	pythonTSKeywordFunction = { fg=colors.KeywordFunction },
	-- pythonTSFunction        = { fg=colors.Function },
	-----------------------------------------


	-- Javascript Language
	-----------------------------------------
	javaScriptFunction = { fg=colors.KeywordFunction },
	-----------------------------------------


	-- C/C++ language:
	-----------------------------------------
	cStatement        = { fg=colors.Statement, style="NONE" },
	cBlock            = { fg=colors.Block,     style="NONE" },
	cStructure        = { fg=colors.Structure, style="NONE" },
	cAccess           = { fg=colors.Access },
	cppStatement      = { fg=colors.Statement, style="NONE" },
	cppBlock          = { fg=colors.Block,     style="NONE" },
	cppAccess         = { fg=colors.Access },

	-- TreeSitter only for CPP
	cppTSVariable     = { fg=colors.Variable },
	cppTSType         = { fg=colors.Type },
	cppTSKeyword      = { fg=colors.Keyword },
	cppTSConditional  = { fg=colors.Conditional },
	cppTSProperty     = { fg=colors.Property },
	cppTSRepeat       = { fg=colors.Repeat },
	cppTSBoolean      = { fg=colors.Boolean },
	cppTSError        = { fg=colors.Error,     bg="NONE" },
	cppTSNamespace    = { fg=colors.Namespace, bg="NONE" },
	cppTSOperator     = { fg=colors.Operator,  bg="NONE" },

	-- TreeSitter only for C
	cTSVariable       = { fg=colors.Variable },
	cTSType           = { fg=colors.Type },
	cTSKeyword        = { fg=colors.Keyword },
	cTSConditional    = { fg=colors.Conditional },
	cTSProperty	      = { fg=colors.Property },
	cTSRepeat         = { fg=colors.Repeat },
	cTSBoolean        = { fg=colors.Boolean },
	cTSError          = { fg=colors.Error,     bg="NONE" },
	-----------------------------------------


	-- HTML language:
	-----------------------------------------
	htmlArg = { style="italic" },
	-- htmlTag = { },
	-- htmlLink = { fg=colors.blue },
	-----------------------------------------


	-- CSS / SASS / SCSS
	-----------------------------------------
	cssFlexibleBoxAttr  = { fg=colors.FlexibleBoxAttr, style="italic" },-- example -> center
	cssColor            = { fg=colors.Color,           style="italic" },-- example -> green, red, blue
	cssUnitDecorators   = { style="italic" }, -- exaple -> rem, em, px,
	cssTagName          = { fg=colors.TagName,         style="NONE" },-- only changes bold/italic| example -> body, html
	cssBoxProp          = { fg=colors.BoxProp },
	cssBraces           = { fg=colors.Braces },
	cssUIProp           = { fg=colors.UIProp },

	sassDefinition      = { fg=colors.Definition },
	sassProperty        = { fg=colors.Property },
	sassCssAttribute    = { fg=colors.Attribute },
	sassInclude         = { fg=colors.Include },

	cssTSPunctDelimiter = { fg=colors.PunctDelimiter, style="NONE" },-- example -> :
	cssTSPunctBracket   = { fg=colors.PunctBracket,   style="NONE" },-- example -> { },()
	cssTSProperty       = { fg=colors.Property,       style="NONE" },-- example -> background-color, display, text-align
	cssTSType           = { fg=colors.Type,           style="NONE" },-- only changes color | example -> body, html

	scssTSProperty      = { fg=colors.Property },
	scssTSPunctBracket  = { fg=colors.PunctBracket },
	-----------------------------------------


	-- JSON Language
	-----------------------------------------
	-- jsonStringMatch  = { fg="#ff0000", style="italic" },
	-- jsonFold         = { fg="#ff0000", style="italic" },
	-- jsonBraces       = { fg="#00ff00", style="NONE" },
	jsonLabel        = { fg=colors.Label,          style="NONE" },
	jsonKeyword      = { fg=colors.Label,          style="NONE" },
	jsonKeywordMatch = { fg=colors.KeywordMatch,   style="bold" },
	jsonString       = { fg=colors.String,         style="italic" },

	jsonTSLabel        = { fg=colors.Label,        style="NONE" },
	jsonTSPunctBracket = { fg=colors.PunctBracket, style="bold" },
	-----------------------------------------


	-- MAKE Language
	-----------------------------------------
	cmakeCommand              = { fg=colors.Command },
	cmakeArguments            = { fg=colors.Arguments },
	cmakeKWvariable_watch     = { fg=colors.KWvariable_watch },
	cmakeKWproject            = { fg=colors.KWproject },
	cmakeGeneratorExpressions = { fg=colors.GeneratorExpressions },
	cmakeVariable             = { fg=colors.Variable },
	cmakeKWuse_mangled_mesa   = { fg=colors.fg, style = "italic" },
	cmakeTSVariable           = { fg=colors.Variable },
	-----------------------------------------


	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------


	-----------------------------------------
	-- treesitter:  github.com/nvim-treesitter/nvim-treesitter
	-----------------------------------------

	TSTitle              = { fg=colors.Title,      style="NONE" },
	TSURI                = { fg=colors.URI,        style="underline" },
	TSVariable           = { fg=colors.Variable,   style="NONE" },
	TSParameter          = { fg=colors.Parameter,  style="italic" },
	TSComment            = { fg=colors.Comment,    style="italic" },
	TSKeyword            = { fg=colors.Keyword,    style="NONE" },
	TSType               = { fg=colors.Type,       style="NONE" },
	TSError              = { fg=colors.Error,      tyle="bold" },
	TSInclude            = { fg=colors.Include },
	TSString             = { fg=colors.String },
	TSFunction           = { fg=colors.Function },
	TSKeywordFunction    = { fg=colors.KeywordFunction, style="NONE" },
	TSKeywordReturn      = { fg=colors.KeywordReturn },
	TSKeywordOperator    = { fg=colors.KeywordOperator },
	TSOperator           = { fg=colors.Operator },
	TSConditional        = { fg=colors.Conditional },
	TSException          = { fg=colors.Exception },
	TSBoolean            = { fg=colors.Boolean },
	TSNumber             = { fg=colors.Number },
	TSMethod             = { fg=colors.Method },
	TSConstructor        = { fg=colors.Constructor },
	TSFuncBuiltin        = { fg=colors.FuncBuiltin },
	TSWarning            = { fg=colors.Warning },
	TSNote               = { fg=colors.Note },
	TSTag                = { fg=colors.Tag },
	TSTagAttribute       = { fg=colors.TagAttribute },
	TSAnnotation         = { fg=colors.Annotation },
	TSAttribute          = { fg=colors.Attribute },
	TSCharacter          = { fg=colors.Character },
	TSConstBuiltin       = { fg=colors.ConstBuiltin },
	TSConstMacro         = { fg=colors.ConstMacro },
	TSConstant           = { fg=colors.Constant },
	TSField              = { fg=colors.Field },
	TSFloat              = { fg=colors.Float },
	TSFuncMacro          = { fg=colors.FuncMacro },
	TSLabel              = { fg=colors.Label },
	TSLiteral            = { fg=colors.Literal },
	TSNamespace          = { fg=colors.Namespace },
	TSProperty           = { fg=colors.Property },
	TSPunctBracket       = { fg=colors.PunctBracket },
	TSPunctDelimiter     = { fg=colors.PunctDelimiter },
	TSPunctSpecial       = { fg=colors.PunctSpecial },
	TSRepeat             = { fg=colors.Repeat },
	TSStringEscape       = { fg=colors.StringEscape },
	TSStringRegex        = { fg=colors.StringRegex },
	TSStrong             = { fg=colors.Strong },
	TSStructure          = { fg=colors.Structure },
	TSSymbol             = { fg=colors.Symbol },
	TSTagDelimiter       = { fg=colors.TagDelimiter },
	TSText               = { fg=colors.Text },
	TSQueryLinterError   = { fg=colors.QueryLinterError },
	TSTypeBuiltin        = { fg=colors.TypeBuiltin },
	TSVariableBuiltin    = { fg=colors.VariableBuiltin },
	TSParameterReference = { fg=colors.ParameterReference },
	TSEmphasis           = { style = "italic" },
	TSUnderline          = { style = "underline" },
	-----------------------------------------
}

return M
