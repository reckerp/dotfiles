return {
    'davidgranstrom/nvim-markdown-preview',
    config = function()
        vim.keymap.set('n', '<leader>mb', ':MarkdownPreview github<CR>')
    end
}
