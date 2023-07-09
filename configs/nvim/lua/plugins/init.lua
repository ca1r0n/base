local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') ..
                             '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git', 'clone', '--depth', '1',
            'https://github.com/wbthomason/packer.nvim', install_path
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- набор Lua функций, используется как зависимость в большинстве
    -- плагинов, где есть работа с асинхронщиной
    use 'nvim-lua/plenary.nvim'

    -- парсер для всех языков программирования, цветной код как в твоем
    -- любимом IDE
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function() require('plugins.telescope') end
    }

    -- airline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require('plugins.lualine') end
    }

    -- автоматические закрывающиеся скобки
    use {
        'windwp/nvim-autopairs',
        config = function() require("nvim-autopairs").setup() end
    }

    use {'ayu-theme/ayu-vim'}

    -- file system
    use {
        'preservim/nerdtree',
        config = function() require('plugins.nerdtree') end
    }

    use {'https://github.com/fatih/vim-go'}

    use {
        'neoclide/coc.nvim',
        branch = "master",
        run = "yarn install --frozen-lockfile",
        config = function() require("plugins.coc_nvim") end
    }

    -- git
    use {'https://github.com/tpope/vim-fugitive'}

    -- icons
    use {'https://github.com/ryanoasis/vim-devicons'}

    -- frotnend
    use {'https://github.com/MaxMEllon/vim-jsx-pretty'}

    use {'https://github.com/leafgarland/typescript-vim'}

    use {'https://github.com/pangloss/vim-javascript'}

    if packer_bootstrap then require('packer').sync() end
end)
