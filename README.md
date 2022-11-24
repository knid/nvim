
![nvim screenshot12](./images/sc1.png)

![nvim screenshot](./images/sc2.png)

![nvim screenshot3](./images/sc3.png)

# My nvim conf files

Requires [Neovim](https://neovim.io/) (>= 0.8)

## Try in docker

```bash
  docker run -w /root -it --rm alpine:edge sh -uelic '
    apk add git nodejs neovim ripgrep alpine-sdk --update
    git clone https://github.com/knid/nvim ~/.config/nvim && sh ~/.config/nvim/install.sh
    '
```

## Setup

```bash
git clone https://github.com/knid/nvim ~/.config/nvim && sh ~/.config/nvim/install.sh
```
