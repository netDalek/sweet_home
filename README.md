


curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:PlugInstall

curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -O ~/.config/nvim/colors/solarized.vim

Q: How do I make the option/alt key act like Meta or send escape codes?
A: Go to Preferences->Profiles tab. Select your profile on the left, and then open the Keyboard tab. At the bottom is a set of buttons that lets you select the behavior of the Option key. For most users, Esc+ will be the best choice.

git config --global core.excludesfile ~/.gitignore_global
