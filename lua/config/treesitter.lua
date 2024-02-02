local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- setup parser for "liquid"
parser_config.liquid = {
    install_info = {
        url = "https://github.com/Shopify/tree-sitter-liquid.git",
        files = { "src/parser.c" },
        branch = "main",
        generate_requires_npm = false,
        requires_generate_from_grammar = false
    },
    filetype = "liquid",
}
