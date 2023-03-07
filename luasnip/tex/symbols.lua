local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })
local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

return {
	-- miscellaneous symbols
	a({trig='...', priority=100}, {t('\\ldots ')}),
	a('lll', {t('\\ell ')}),
	a('ooo', {t('\\infty ')}),
	a('**', {t('\\cdot ')}),
	a({trig='~~', dscr="~"}, {t('\\sim ')}),

	-- abbreviated symbols
	a({trig='=<', dscr="impliedby"}, {t('\\impliedby ')}, { condition=math }),
	a({trig='=>', dscr="implies"}, {t('\\implies ')}, { condition=math }),
	a({trig='iff', dscr="iff"}, {t('\\iff ')}, { condition=math }), -- if and only if
	a({trig='EE', dscr="exists"}, {t('\\exists ')}, { condition=math }),
	a({trig='AA', dscr="for all"}, {t('\\forall ')}, { condition=math }),
	a({trig='nabla', dscr="nabla"}, {t('\\nabla ')}, { condition=math }),
	-- 
	a({trig='!=', dscr="not equal to"}, {t('\\neq ')}, { condition=math }),
	a({trig='>=', dscr="greater than or equal to"}, {t('\\ge ')}, { condition=math }),
	a({trig='>>', dscr="much greater than"}, {t('\\gg ')}, { condition=math }),
	a({trig='<<', dscr="much less than"}, {t('\\ll ')}, { condition=math }),
	a({trig='xx', dscr="cross"}, {t('\\times ')}, { condition=math }),


	-- cap and cup
	a({trig='||', dscr="mid"}, {t('\\mid ')}),
	a({trig='nn', dscr="cap"}, {t('\\cap ')}),
	a({trig='uu', dscr="cup"}, {t('\\cup ')}),
	a({ trig='NN', dscr='big cap'},
		fmt([[
			\bigcap_{<>\in <>} <>]],
			{ i(1), i(2), i(0) },
			{ delimiters='<>' }
		)
	),
	a({ trig='UU', dscr='big cup'},
		fmt([[
			\bigcup_{<>\in <>} <>]],
			{ i(1), i(2), i(0) },
			{ delimiters='<>' }
		)
	),

	-- ams
	-- -- bm replace the amsby in amsmath 
	a({ trig='bm', dscr='bold fonts'},
		fmt([[\bm{<>} <>]],
			{ i(1), i(0) },
			{ delimiters='<>' }
		)
	),
 	-- -- amsfonts(amsfonts, amssymb, eufrak, eucal)
	-- mathbb
	a({ trig='amsbb', dscr='amssymb'},
		fmt([[\mathbb{<>} <>]],
			{ i(1), i(0)},
			{ delimiters='<>' }
		)
	),

	-- Bold
	a({trig='\\N', dscr="Natural numbers"}, {t('\\mathbb{N} ')}, { condition=math }),
	a({trig='\\Z', dscr="Integers"}, {t('\\mathbb{Z} ')}, { condition=math }),
	a({trig='\\Q', dscr="Rational numbers"}, {t('\\mathbb{Q} ')}, { condition=math }),
	a({trig='\\R', dscr="Real numbers"}, {t('\\mathbb{R} ')}, { condition=math }),
	a({trig='\\C', dscr="Comples numbers"}, {t('\\mathbb{C} ')}, { condition=math }),
	a({trig='\\A', dscr="Affine space"}, {t('\\mathbb{A} ')}, { condition=math }),
	a({trig='\\P', dscr="Project space"}, {t('\\mathbb{P} ')}, { condition=math }),

	-- eucal 
	a({ trig='amseuc', dscr='eucal'},
		fmt([[\mathcal{<>} <>]],
			{ i(1), i(0) },
			{ delimiters='<>' }
		)
	),

	-- SI
	a({ trig='\\qty', dscr='SI unit'},
		fmt([[\qty{<>}{<>} <>]],
			{ i(1), i(2), i(0) },
			{ delimiters='<>' }
		)
	),

}
