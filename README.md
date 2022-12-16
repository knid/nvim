
![nvim screenshot1](./images/sc1.png)

![nvim screenshot2](./images/sc2.png)

![nvim screenshot3](./images/sc3.png)

## Non-Transparent

![nvim screenshot3](./images/sc4.png)

# My nvim conf files

#### Requires 

- [Neovim](https://neovim.io/) (>= 0.8)

- [yarn](https://classic.yarnpkg.com/lang/en/docs/install/) (For markdown-preview)

If you want to use transparent you have to make iterm2 transparent

## Try in docker

```bash
  docker run -w /root -it --rm alpine:edge sh -uelic '
    apk add git nodejs neovim ripgrep alpine-sdk --update
    git clone https://github.com/knid/nvim ~/.config/nvim && 
    sh ~/.config/nvim/install.sh
    '
```

## Setup

```bash
git clone https://github.com/knid/nvim ~/.config/nvim && sh ~/.config/nvim/install.sh
```

## Config

if you want to disable transparent change **transparent variable** in **nvim/lua/knid/theme.lua**

### Install language for treesitter

````
:TSInstall <language>
````

### Install language for LSP

````
:MasonInstall <lspserver>
````
