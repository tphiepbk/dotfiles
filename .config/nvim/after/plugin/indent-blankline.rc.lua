local status, indent_blankline = pcall(require, "indent_blankline")
if (not status) then return end

indent_blankline.setup({
    char = "┃",
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
})
