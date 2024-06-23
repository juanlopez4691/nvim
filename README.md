# My Neovim Configuration

## Description

Welcome to my personal Neovim configuration repository! This setup is tailored
to my workflow and includes a variety of plugins and custom settings to enhance
productivity and ease of use.

This configuration leverages powerful tools and plugins to provide a robust
development environment for PHP, JavaScript and CSS. Also, it's specially tunned
for WordPress & WooCommerce development.

## Features

- **Efficient Package Management**: Utilizing
  [LazyVim](https://github.com/folke/lazy.nvim) for easy plugin installation and
  management.
- **Custom Key Bindings**: Intuitive shortcuts to speed up common tasks.
- **Theming**: Aesthetic and functional themes for a better coding experience.
- **Language Support**: Enhanced support for multiple programming languages with
  syntax highlighting and more.
- **Autocompletion**: Smart autocompletion setup for a lightweight and
  responsive experience.
- **PHP Debug**: Support for PHP debugging with XDebug, using [VSCode style
  launch configuration
  files](https://code.visualstudio.com/docs/editor/debugging#_launch-configurations).

## Prerequisites

Before you begin, ensure that you have Neovim installed on your system. You can
download it from the [official Neovim site](https://neovim.io/).

To get the most of this neovim configuration, you will also need the following
tools installed in your system:

- [Intelephense](https://intelephense.com/) for intelligent PHP code completion.
- Intelephense stubs customization to include:
  - [WordPress](https://github.com/php-stubs/wordpress-stubs)
  - [WooCommerce](https://github.com/php-stubs/woocommerce-stubs)
  - [WP-CLI](https://github.com/php-stubs/wp-cli-stubs)
  - [Advanced Custom Fields (ACF)](https://github.com/php-stubs/acf-pro-stubs)
  - [Polylang](https://github.com/polylang/polylang-stubs)
  - [Genesis
    Theme](https://marioyepes.com/blog/intelephense-wordpress-acf-genesis-conf/)

- [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer) for PHP code standards
  checking
- PHPCBF (installed along with PHPCS) for code standards fixing.
- Coding standards for
  [WordPress](https://github.com/WordPress/WordPress-Coding-Standards) and
  [WooCommerce](https://github.com/woocommerce/woocommerce-sniffs/).
- [Prettier](https://prettier.io/) for code formatting.
- [Stylelint](https://stylelint.io/) for CSS/SCSS linting.

## Installation

To use this configuration, follow these steps:

1. Clone this repository into your Neovim configuration directory:

   ```bash
   git clone https://github.com/juanlopez4691/nvim.git ~/.config/nvim
   ```
1. Open Neovim, and the package manager will automatically download and install
   the plugins listed in the configuration.
1. Restart Neovim to apply the changes.

## Usage

After installing the configuration, you can start using Neovim with the new
settings and plugins. Explore the features and customize them as needed to fit
your workflow.

## Customization

You can override the configuration files to change key mappings, add plugins,
change existing plugin settings, and modify other configurations. Just add your
own lua files in folder `lua/custom`.

## Key Mappings

Key mapping definition is organized in files, attending to the functionality the
key mappings are related to. See folder `lua/core/keymappings/keys`.

Plugins

Plugins are managed with [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
amazing package manager. Below is a list of plugins included in this
configuration:

- **File Tree**
  - [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
  - [b0o/nvim-tree-preview.lua](https://github.com/b0o/nvim-tree-preview.lua)
- **Color Schemes**
  - [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
  - [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
  - [catppuccin/nvim](https://github.com/catppuccin/nvim)
  - [bluz71/vim-nightfly-colors](https://github.com/bluz71/vim-nightfly-colors)
- **Coding Helpers**
  - [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
  - [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim)
  - [roobert/tailwindcss-colorizer-cmp.nvim](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim)
  - [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua)
  - [NStefan002/visual-surround.nvim](https://github.com/NStefan002/visual-surround.nvim)
  - [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
  - [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
  - [echasnovski/mini.cursorword](https://github.com/echasnovski/mini.cursorword)
  - [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- **Code Completion & Suggestions**
  - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help)
  - [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
  - [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
  - [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
  - [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
  - [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
  - [David-Kunz/gen.nvim](https://github.com/David-Kunz/gen.nvim)
- **Code Snippets**
  - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
  - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- **Code Diagnostics & Quickfix List**
  - [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
  - [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- **Code Debugging**
  - [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
  - [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
  - [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
  - [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- **Code Folding & Indenting**
  - [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- **Code Linting & Formatting**
  - [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
  - [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)
- **Key Mappings**
  - [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- **Git**
  - [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)
  - [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **LSP**
  - [zeioth/garbage-day.nvim](https://github.com/zeioth/garbage-day.nvim)
  - [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
  - [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
  - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- **Treesitter**
  - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Telescope**
  - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
  - [nvim-telescope/telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim)
  - [nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim)
  - [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
  - [debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)
- **Terminal Management**
  - [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- **Status Line & Tabs**
  - [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [b0o/incline.nvim](https://github.com/b0o/incline.nvim)
- **UI Enhancements**
  - [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
  - [nvim-zh/colorful-winsep.nvim](https://github.com/nvim-zh/colorful-winsep.nvim)
  - [liangxianzhe/floating-input.nvim](https://github.com/liangxianzhe/floating-input.nvim)
  - [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
  - [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- **TMUX Integration**
  - [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- **General**
  - [willothy/flatten.nvim](https://github.com/willothy/flatten.nvim)

## Contributing

If you have suggestions for improving this configuration or if you've found a
bug, please feel free to open an issue or submit a pull request. Contributions
are always welcome!

## License

This Neovim configuration is open-sourced software licensed under the MIT
license.

## Acknowledgments

Thanks to the creators and contributors of all the plugins and tools used in
this configuration. Special thanks to the Neovim community for providing
guidance and support.

## Contact

If you have any questions or want to get in touch, feel free to create an issue
on this repository or contact me directly.

Happy coding!
