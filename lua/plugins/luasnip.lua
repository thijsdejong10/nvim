local luasnip = require("luasnip")
return {
  luasnip.add_snippets("tex", { luasnip.snippet("cacl2", { luasnip.text_node("CaCl$_2$") }) }),
  luasnip.add_snippets("tex", { luasnip.snippet("caoh2", { luasnip.text_node("Ca(OH)$_2$") }) }),
}
