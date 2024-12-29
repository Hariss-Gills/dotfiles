local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        tex = { "latexindent" },
    },

    formatters = {
        -- -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "79",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
