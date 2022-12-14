require('telescope').setup {
    defaults = {
      file_ignore_patterns = {
        '.git/', 'node_modules/', '.npm/', '*[Cc]ache/', '*-cache*',
        '.dropbox/', '.dropbox_trashed/', '*.py[co]', '*.sw?', '*~',
        '*.sql', '*.tags*', '*.gemtags*', '*.csv', '*.tsv', '*.tmp*',
        '*.old', '*.plist', '*.pdf', '*.log', '*.jpg', '*.jpeg', '*.png',
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      }
    }
}
require('telescope').load_extension('fzf')
