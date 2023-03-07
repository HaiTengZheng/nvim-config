local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	-- preamble
	s({ trig='pac', dscr='package'},
		fmt([[\usepackage[<>]{<>}<>]],
			{ i(1,"options"), i(2,"package"), i(0) },
			{ delimiters='<>' }
		)
	),

	-- default
	s({ trig='beg', dscr='begin{} / end{}'},
		fmt([[
			\begin{<>}<>
				<>
			\end{<>}]],
			{ i(1), i(2), i(0), rep(1) },
			{ delimiters='<>' }
		)
	),

	s({ trig='enum', dscr='enumerate'},
		fmt([[
			\begin{enumerate}
				\item <>
			\end{enumerate}]],
			{ i(0) },
			{ delimiters='<>' }
		)
	),


	s({ trig='item', dscr='itemize'},
		fmt([[
			\begin{itemize}
				\item <>
			\end{itemize}]],
			{ i(0) },
			{ delimiters='<>' }
		)
	),

	s({ trig='desc', dscr='description'},
		fmt([[
			\begin{description}
				\item[<>] <>
			\end{description}]],
			{ i(1), i(0) },
			{ delimiters='<>' }
		)
	),

	a({ trig='\\use', desr="usepackage"},
		fmta([[\usepackage{<>}<>]],
			{ i(1), i(0) })),
}
