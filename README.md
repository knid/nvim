<h1 align="center">KnidNvim</h1>

<div align="center">
  <img alt="" src="https://img.shields.io/badge/Neovim-0.8.0-green?style=flat-square&logo=neovim">
  <a href="https://github.com/knid/nvim/issues"><img src="https://img.shields.io/github/issues/knid/nvim?style=flat-square&logo=github&label=Issues&color=d77982"></a> 
  <img alt="GitHub" src="https://img.shields.io/github/license/knid/nvim?style=flat-square">
  <img alt="" src="https://img.shields.io/badge/completely lua-blue?style=flat-square&logo=lua">
  <a href="https://twitter.com/devknid" target="_blank"><img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/devknid?style=flat-square&logo=twitter&color=%234B78E6&logoColor=%234B78E6"><a/>
  <!-- <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/knid/nvim?syle=flat-square"> -->
</div>

## Showcase

<img src="https://i.imgur.com/iY7q2Oh.png">
<img src="https://i.imgur.com/upuTqpm.png">
<img src="https://i.imgur.com/BJbIjr5.jpeg">
<img src="https://i.imgur.com/51XKXAe.png">

### What is it?

- KnidNvim is my personal neovim configuration with a beautiful ui powered by many powerful plugins like
  Telescope, nvim-tree, lspconfig. Completely written in lua.

- KnidNvim has about 10+ beautiful themes. You can add more or customize anything.

- KnidNvim is a base configuration for neovim. You can extend or something but if you
  want to do small changes you can edit <a href="lua/knid/config.lua">lua/knid/config.lua</a> file.
  KnidNvim tried to simplify customization for you.

### Requirements

- [Neovim](https://neovim.io/) (>= 0.8)
- [Use a nerd font](https://www.nerdfonts.com) in your terminal
- Make sure to delete this folder `~/.local/share/nvim`
- (Optional) [ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope.

### Installation

```bash
git clone https://github.com/knid/nvim ~/.config/nvim && nvim +KnidInstall
```

Restart nvim after finished.

### Update

Run `:KnidUpdate` in neovim or run `nvim +KnidUpdate` in your terminal.

### Configuration

You can configure KnidNvim with just **one file.**

<a href="lua/knid/config.lua">lua/knid/config.lua</a>

For open run `:KnidConfig` or press `<leader>es`

**Note:** Default leader: `<space>` key

```lua
Config = {
  leader = " ",
  theme = 'onedark', -- Available Themes: onedark, aquarium, ayu, everforest, nightfox, dayfox, dawnfox, duskfox, terafox, carbonfox
  transparent = false,
  ...
  lsp = {
    auto_format = true,
    colors = {
      error = '#db4b4b',
      warning = '#e0af68',
  ...
  map = {
    custom = {
      { 'n', '<leader>sayhi', function() print('hi :>') end }
    }
  }
  ...
}

return Config
```

#### Install LSP servers

Run `:Mason` and install with gui

or

```bash
:MasonInstall <lspserver>
```

#### Built-in commands

- `:Run` mapping: `<leader>r`
  - The command run a program in neovim buffer. It can be auto detect file type and run.
  - Its still in development and just support few languages (c, rust, python, c++, js)
- `:KnidInstall`
  - The command install KnidNvim
- `:KnidUpdate`
  - The command update KnidNvim

#### Mappings

Default mappings.
<a href="lua/knid/core/default_maps.lua">lua/knid/core/default_maps.lua</a>

You can add more by editing <a href="lua/knid/core/custom_maps.lua">lua/knid/core/custom_maps.lua</a> file.

OR using <a href="lua/knid/config.lua">lua/knid/config.lua</a> file

<a href="lua/knid/core/maps.lua">lua/knid/core/maps.lua</a>

```lua
Config = {
  ...
  map = {
    disable_default = false,
    custom = {
      { 'n', '<leader>sayhi', function() print('hi :>') end }
    }
  }
    ...
}
```

#### Change Theme

Change the `theme` variable in <a href="lua/knid/config.lua">lua/knid.config.lua</a>

```lua
Config = {
  ...
  theme = 'nightfox',
  -- Available Themes: onedark, aquarium, ayu, everforest, nightfox, dayfox,
  -- dawnfox, duskfox, terafox, carbonfox
  transparent = false,
  ...
}
```

If you want to make transparent ui change the `transparent` variable.

#### Add plugins

KnidNvim use `packer` for plugin management.

You can see plugin list and add plugins by editing <a href="lua/knid/plugins/list.lua">lua/knid/plugins/list.lua</a>

## Support

If you wanna support my work here is the donation links

<a href="https://www.buymeacoffee.com/knid"> <img src="https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black"></a>
<a href="https://payreque.st/knid"><img src="https://img.shields.io/badge/PAYREQUEST-a?style=for-the-badge&color=23a2c5"></a>
