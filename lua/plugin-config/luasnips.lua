local ls = require('luasnip')

ls.config.set_config({
	history = true,
	enable_autosnippets = true,
	store_selection_keys = "<Tab>",
})

-- snip path
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})
