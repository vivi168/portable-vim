# Portable VIM

This is a portable .vimrc you can use on any computer without interfering with the default .vimrc.

Simply clone this repo in `~/.portable-vim` for example and then:

```
vim +PlugI +qa -u ~/.portable-vim/vimrc # only the first time, to install every plugins
vim -u ~/.portable-vim/vimrc # to actually launch vim
```

You can also clone it to `~/.vim` if you want it to be your default vim config. You won't need the `-u` option when launching vim (make sure to remove `~/.vimrc` if it exists).


## How to use ripgrep with fzf

If you have rg installed, you can add this line to your `~/.bash_profile` to make fzf use rg

```
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
```

You may also want to customize your `~/.rgignore` to suit your needs.

## tmux

```
ln -s ~/.vim/tmux.conf ~/.tmux.conf
```
