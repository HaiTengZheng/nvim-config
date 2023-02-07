-- Anatomy of a LuaSnip snippet
--[[
require("luasnip").snippet(
  snip_params:table,  -- table of snippet parameters
  nodes:table,        -- table of snippet nodes
  opts:table|nil      -- *optional* table of additional snippet options
)
]]--

return {

s({trig="template", dscr="latex default template", snippetType="autosnippet"},
	fmt(
		[[
			\documentclass[a4paper]{article}",
			\usepackage[utf8]{inputenc}",
			\usepackage[T1]{fontenc}",
			\usepackage{amsmath, amssymb}",

			\begin{equation}
				<>
			\end{equation}
		]],
		{ i(1) },
		{ delimiters = "<>" }
	)
),

s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
	fmta(
		"\\texttt{<>}",
		{ i(1) }
	)
),









-- Greek letter snippets


s({trig=";a", snippetType="autosnippet"},
	{
		t("\\alpha"),
	}
),

s({trig=";b", snippetType="autosnippet"},
	{
		t("\\beta"),
	}
),

s({trig=";g", snippetType="autosnippet"},
	{
		t("\\gamma"),
	}
),

}
