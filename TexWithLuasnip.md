# 用 LuaSnip 帮助更好的 Latex 写作
## 安装
推荐使用 packer 来管理插件   
<https://github.com/L3MON4D3/LuaSnip>
## 使用 lua 配置 luasnip (我在 fedora 下使用 neovim)
> luasnip-config-reference  

我个人的配置 <https://github.com/HaiTengZheng/nvim-config>  
在 ~/.config/nvim/lua/ 下创建 luasnip.lua 文件，在 ~/.config/nvim/ 下创建 luasnip 目录，并配置如下基本配置
```lua
local ls = require('luasnip')

ls.config.set_config({
    history = true,
    -- 允许自动扩展
    enable_autosnippets = true,
    -- 可视节点快捷键
    store_selection_keys = "<Tab>",
    -- 在选择节点中时行末尾出现标识
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "●", "GruvboxOrange" } },
            },
        },
    },

})

-- 按键设置
local opt = { noremap = true, silent = true }
local map = vim.keymap.set
-- 基础按键, 官方文档
vim.cmd([[
    inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
    snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
    imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
    smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]])
-- 我使用 nvim-cmp , 参考 https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#ultisnips--cmp-cmdline
-- 选择节点按键设置
map("i", "<C-n>", "<Plug>luasnip-next-choice", opt)
map("s", "<C-n>", "<Plug>luasnip-next-choice", opt)
map("i", "<C-p>", "<Plug>luasnip-prev-choice", opt)
map("s", "<C-p>", "<Plug>luasnip-prev-choice", opt)


-- 片段存放地址
require("luasnip.loaders.from_lua").load({"~/.config/nvim/luasnip"})
```
在 ~/.config/nvim/ 创建 init.lua, 配置如下
```lua
require('luasnip')
```
## 默认全局设置 (global default)
> luasnip.config.snip_env
```lua
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
```
以上声明将会在片段中使用
# 从创建片段的模板开始
```

```
# 片段 
## 
# 节点 (nodes) 
## 文本节点 (textNode)
## 插入节点 (insertNode)
## 程序节点 (functionNode)
## 选择节点 (choiceNode)
> luasnip-choice-node
## 恢复节点 (restoreNode)
##  动态节点 (dynamicNode)


