mv ~/.gitconfig ~/.gitconfig.bak
ln -s `pwd`/.gitconfig ~/.gitconfig

mv ~/.gitignore_global ~/.gitignore_global.bak
ln -s `pwd`/.gitignore_global ~/.gitignore_global

mv ~/.zshrc ~/.zshrc.bak
ln -s `pwd`/.zshrc ~/.zshrc

mv ~/.vimrc ~/.vimrc.bak
ln -s `pwd`/.vimrc ~/.vimrc

#mv /usr/local/var/postgres/pg_hba.conf /usr/local/var/postgres/pg_hba.conf.bak
#ln -s `pwd`/pg_hba.conf /usr/local/var/postgres/pg_hba.conf

mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s `pwd`/tmux.conf ~/.tmux.conf

mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
ln -s `pwd`/nvimrc ~/.config/nvim/init.vim

ln -s `pwd`/vim_colors ~/.config/nvim/colors
ln -s `pwd`/vim_colors ~/.vim/colors

