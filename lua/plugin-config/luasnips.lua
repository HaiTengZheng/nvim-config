local ls = require('luasnip')

ls.config.set_config({
	history = true,
	enable_autosnippets = true,
})

-- snip path
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})
