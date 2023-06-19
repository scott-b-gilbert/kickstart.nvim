local ls = require("luasnip")
local func = ls.function_node
local snip = ls.snippet_node
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local dyn = ls.dynamic_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
	all = {
		-- Available for any filetype
		ls.parser.parse_snippet("expand", "-- this is what was expanded"),

	},

	lua = {
		ls.parser.parse_snippet("explua", "-- this is what was expanded"),
		-- lua specific snippets would go here
	},

})

ls.add_snippets("python", {
	s(
		"aoc",
		fmt([[
#!/usr/bin/python3

import typer

app = typer.Typer()

EXAMPLE = """\
"""


def part1(all_data: str) -> None:
    answer = 0
    print(f"Part 1: {{answer}}")


def part2(all_data: str) -> None:
    answer = 0
    print(f"Part 2: {{answer}}")


@app.command()
def main(test: bool = False):
    if test:
        part1(EXAMPLE)
        part2(EXAMPLE)
    else:
        with open('{}-day{}-input.txt') as f:
            all_data = f.read()[:-1]
        part1(all_data)
        part2(all_data)

if __name__ == "__main__":
    app()
				     ]],
			{
				i(1, "YEAR"), i(2, "day")
			},
			{
				-- arguments here
			}))
})
