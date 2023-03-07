local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	s({trig='template', dscr="latex default template"},
		fmt([[
				\input{preamble}

				\title{<>}
				\author{<>}

				\begin{document}
				\maketitle
				\tableofcontents
				<>
				\end{document}
			]],
			{ i(1), i(2), i(0) },
			{ delimiters = "<>" }
		)
	),



}
