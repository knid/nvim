local status, telescope = pcall(require, "telescope")
if (not status) then return end
local status, tss = pcall(require, 'telescope.sorters')
if (not status) then return end
local status, tsp = pcall(require, 'telescope.previewers')
if (not status) then return end
local status, tsa = pcall(require, 'telescope.actions')
if (not status) then return end




telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter = tss.get_fuzzy_file,
    file_ignore_patterns = { "node_modules" },
    generic_sorter = tss.get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_previewer = tsp.vim_buffer_cat.new,
    grep_previewer = tsp.vim_buffer_vimgrep.new,
    qflist_previewer = tsp.vim_buffer_qflist.new,
    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = tsp.buffer_previewer_maker,
    mappings = {
      n = { ["q"] = tsa.close },
    },
  },

  extensions_list = { "themes", "terms" },
})
