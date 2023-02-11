local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	-- miscellaneous symbols
	a({trig='...', priority=100}, {t('\\ldots ')}),
	a('lll', {t('\\ell ')}),
	a('ooo', {t('\\infty ')}),
	a('**', {t('\\cdot ')}),
	a({trig='~~', dscr="~"}, {t('\\sim ')}),

	-- logic
	a('=>', {t('\\implies ')}),
	a('=<', {t('\\impliedby ')}),

	--
	a('!=', {t('\\neq ')}),
	a('<=', {t('\\le ')}),
	a('>=', {t('\\ge ')}),
	a({trig='>>', dscr="much greater than"}, {t('\\gg ')}),
	a({trig='<<', dscr="much less than"}, {t('\\ll ')}),

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
	a({ trig='amsbb', dscr='amssymb'},
		fmt([[\mathbb{<>} <>]],
			{ i(1), i(0)},
			{ delimiters='<>' }
		)
	),
	a({ trig='amseuc', dscr='eucal'},
		fmt([[\mathcal{<>} <>]],
			{ i(1), i(0) },
			{ delimiters='<>' }
		)
	),

	-- SI
	a({ trig='SI', dscr='SI'},
		fmt([[\SI{<>}{<>} <>]],
			{ i(1), i(2), i(0) },
			{ delimiters='<>' }
		)
	),

}
