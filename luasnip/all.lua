local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {

-- format snippt
a("snipf",
	fmt(
		[[	
			<>({ trig='<>', dscr='<>'},
				fmt(<>,
					{ <> },
					{ delimiters='<>' })<>
					{ condition=math })<>,
		]],
			{
				c(1, { t("s"), t("a") }),
				i(2, "trig"),
				i(3, "dscr"),
				i(4, "fmt"),
				i(5, "inputs"),
				i(6, "<>"),
				i(7, ""), --opts
				i(0),
			},
			{ delimiters = "<>" }
		)
),

-- simple text snippet
--s("snipt",
--	fmt([[ 
--			<>(<>, {t('<>')}<>
--			<>)<>,
--		]],
--		{
--			c(1, { t("s"), t("a") }),
--			c(2, { i(nil, "trig"), sn(nil, { t("{trig='"), i(1), t("'}") }) }),
--			i(3, "text"),
--			i(4, ""), --opts
--			i(5),
--			i(0),
--		},
--		{ delimiters = "<>" }
--	)
--),

a('ssa',
	fmt([[
			a({trig='<>', dscr="<>"}, {t('<>')}, { condition=math })<>,
		]],
		{ i(1, "trig"), i(2, "description"), i(3, "text"), i(0) },
		{ delimiters='<>' }
	)
),
a({ trig='saa', dscr='..'},
	fmt([[
			a({ trig='<>', desr="<>"},
				fmta(<>,
					{ <> })
				{ condition=math }),
		]],
		{ i(1), i(2), i(3), i(4) },
		{ delimiters='<>' }
	)
),
}
