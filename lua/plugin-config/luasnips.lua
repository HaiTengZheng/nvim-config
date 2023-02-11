local ls = require('luasnip')
local types = require("luasnip.util.types")

ls.config.set_config({
	history = true,
	enable_autosnippets = true,
	store_selection_keys = "<Tab>",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "●", "GruvboxOrange" } },
			},
		},
	},
})

-- snip path
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})
