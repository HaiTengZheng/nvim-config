local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	s({trig='template', dscr="latex default template"},
		fmt([[
				\documentclass[a4paper]{article}
				%%%%%%%%% standard latex packages %%%%%%%%%
				\usepackage[utf8]{inputenc}
				\usepackage[T1]{fontenc}
				\usepackage{graphicx}
				\usepackage{multirow}
				\usepackage{amsmath,amssymb,amsfonts}
				\usepackage{amsthm}
				\usepackage[figuresright]{rotating}
				\usepackage[title]{appendix}
				\usepackage{xcolor}
				\usepackage{textcomp}
				\usepackage{manyfoot}
				\usepackage{booktabs}
				\usepackage{algorithm}
				\usepackage{algorithmicx}
				\usepackage{algpseudocode}
				\usepackage{program}
				\usepackage{listings}

				
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
