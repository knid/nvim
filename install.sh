echo "Cloning packer"
# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo "Installing plugins"
# Install plugins
nvim +PackerInstall
echo "Building markdown-preview plugin with yarn"
# Build markdown-preview
(cd ~/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim && yarn install && yarn build)
