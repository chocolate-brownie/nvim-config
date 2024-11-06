return {
    '42Paris/42header',
    config = function()
        -- Set your 42 intra login and email
        vim.g.user42 = 'mgodawat'
        vim.g.mail42 = 'mgodawat@student.42.fr'

        -- Automatically add header on new C, C++, and header files
        vim.api.nvim_create_autocmd('BufNewFile', {
            pattern = {'*.c', '*.cpp', '*.h'},
            command = 'Stdheader',
        })
    end
}

