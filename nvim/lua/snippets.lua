local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local f = luasnip.function_node

-- Adicionando o snippet para a linguagem 'swift'
luasnip.add_snippets("swift", {
  s("_sview", {
    t({ "import SwiftUI", "", "" }),
    t({ "struct ContentView" }),
    t({ ": View {", "", "" }),
    t({ "    var body: some View {", "" }),
    t({ "        Text(\"Hello, " }),
    t({ "!\")", "" }),
    t({ "    }", "", "" }),
    t({ "}", "", "" }),
  }),
})
