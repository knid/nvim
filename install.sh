# Packer
echo "Cloning packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# Install plugins
echo "Installing plugins"
nvim +PackerInstall
# Build markdown-preview
echo "Building markdown-preview plugin with yarn"
(cd ~/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim && yarn install && yarn build)
