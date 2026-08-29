luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local f = luasnip.function_node
local i = luasnip.insert_node

-- Snippet to leetocde
luasnip.add_snippets("c", {
    s("_leetcode", {
        t({ "#include <logger.h>" }),
        t({ "", "#include <stdbool.h>", "", "" }),
        i(1, "void function_name() {}"),
        t({ "", "" }),
        t({ "", "bool verifyResult(int a, int b) {" }),
        t({ "", "\treturn (function(a) == b);" }),
        t({ "", "}", "" }),
        t({ "", "int main(void) {" }),
        t({ "", "\tlogging_testing(\"Testing is function(a) is equal b\", verifyResult(a, b));" }),
        t({ "" }),
        t({ "", "\treturn 0;" }),
        t({ "", "}"})
    })
})
