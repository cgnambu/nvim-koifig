return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
            config = {
                shortcut = {
                    {
                        desc = '󰚰Update',
                        group='@property',
                        action = 'Lazy update',
                        key = 'u'
                    },
                },
            }
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
