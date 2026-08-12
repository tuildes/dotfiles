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
        t({ "", "bool verifyResult(void *a, void *b) {" }),
        t({ "", "\treturn true;" }),
        t({ "", "}", "" }),
        t({ "", "int main(void) {" }),
        t({ "", "\t// Testing values" }),
        t({ "", "\tlogging_testing(\"Testing 01\", verifyResult(a, b));" }),
        t({ "" }),
        t({ "", "\treturn 0;" }),
        t({ "", "}"})
    })
})
