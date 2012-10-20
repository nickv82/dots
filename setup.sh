echo "install oh my zsh"
git submodule init
git submodule update

echo "installing vundle for vim"
git clone http://github.com/gmarik/vundle.git vim/vim.symlink/bundle/vundle

echo "making symlinks"
ruby make_links.rb

echo "installing bundles for vim"
vim -c BundleInstall -q -q

echo "setting zsh as default shell"
chsh -s /usr/bin/zsh
zsh
