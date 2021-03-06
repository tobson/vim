The following is from
http://rmitc.org/2013/04/modern-vim-plugin-management-pathogen-vs-vundle/

If you want to install a plugin, see if it has a git repo (9 out of 10 times it
has a github repo). Find its git url and add to your `.vim` as a submodule:

    cd ~/.vim
    git submodule add https://github.com/majutsushi/tagbar.git bundle/tagbar
    git submodule add https://github.com/altercation/vim-colors-solarized.git bundle/solarized
    git submodule update --init
    git submodule foreach git pull origin master

When you need to update your plugins, just run the last line to make git pull
updates for all plugins.

Here’s the awesome part: when you’re using a whole new computer and want to get
all your vim settings from the cloud, simply clone your github repo, make a
symlink for `.vimrc` and pull all plugins:

    cd ~
    git clone https://github.com/nhanb/.vim.git .vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd .vim
    git submodule update --init && git submodule foreach git pull origin master
