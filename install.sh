# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# Knid nvim
git clone https://github.com/knid/nvim ~/.config/nvim
# Install plugins
nvim +PackerInstall +quit && nvim
