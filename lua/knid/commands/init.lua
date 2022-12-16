require('knid.commands.run')

vim.api.nvim_create_user_command(
    'Runner',
    function(opts)
        Run()
    end,
    {}
)
