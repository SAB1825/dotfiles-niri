vim.opt.termguicolors = true

require("rose-pine").setup({
	styles = {
		bold = false,
		italic = false,
		transparency = true,
	},
})

require("kanagawa").setup({
	transparent = true,
	theme = "wave",
	overrides = function()
		local none = "none"
		return {
			LspInlayHint = { fg = "#727169", italic = true },
			Normal = { bg = none },
			NormalNC = { bg = none },
			NormalFloat = { bg = none },
			SignColumn = { bg = none },
			CursorLine = { bg = none },
			CursorLineNr = { bg = none, fg = "#c8c093" },
			LineNr = { bg = none },
			FoldColumn = { bg = none },
			StatusLine = { bg = none },
			StatusLineNC = { bg = none },
			TabLine = { bg = none },
			TabLineSel = { bg = none },
			TabLineFill = { bg = none },
			WinSeparator = { bg = none },
			Pmenu = { bg = none },
			PmenuSel = { bg = none },
			PmenuSbar = { bg = none },
			PmenuThumb = { bg = none },
			SpellBad = { bg = none },
			SpellCap = { bg = none },
			MatchParen = { bg = "#363646" },
		}
	end,
})

require("nightfox").setup({
	options = {
		transparent = true,
	},
})

vim.cmd("colorscheme carbonfox")

vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#b6b6be", italic = true })