local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	-- letter case
	a(';a', {t('\\alpha ')}),
	a(';b', {t('\\beta ')}),
	a(';g', {t('\\gamma ')}),
	a(';d', {t('\\delta ')}),
	a(';e', {t('\\epsilon ')}),
	a(';z', {t('\\zeta ')}),
	a(';h', {t('\\eta ')}), -- capital \eta is H
	a(';t', {t('\\theta ')}),
	-- don't use \iota
	a(';k', {t('\\kappa ')}),
	a(';l', {t('\\lambda ')}),
	a(';m', {t('\\mu ')}),
	a(';n', {t('\\nu ')}),
	a(';x', {t('\\xi ')}),
	-- o is default
	a(';i', {t('\\pi ')}), -- use i instead 
	a(';r', {t('\\rho ')}),
	a(';s', {t('\\sigma ')}),
	a(';o', {t('\\tau ')}), -- use o instead
	a(';u', {t('\\upsilon ')}),
	a(';f', {t('\\phi ')}), -- pronounce
	a(';c', {t('\\chi ')}),
	a(';p', {t('\\psi ')}),
	a(';w', {t('\\omega ')}),

	-- var case
	a(';ve', {t('\\varepsilon ')}),
	a(';vt', {t('\\vartheta ')}),
	a(';vr', {t('\\varrho ')}),
	a(';vf', {t('\\varphi ')}),

	-- upper case
	a(';G', {t('\\Gamma ')}),
	a(';D', {t('\\Delta ')}),
	a(';T', {t('\\Theta ')}),
	a(';L', {t('\\Lambda ')}),
	a(';X', {t('\\Xi ')}),
	a(';I', {t('\\Pi ')}), -- use i instead 
	a(';S', {t('\\Sigma ')}),
	a(';U', {t('\\Upsilon ')}),
	a(';F', {t('\\Phi ')}),
	a(';P', {t('\\Psi ')}),
	a(';W', {t('\\Omega ')}),



}
