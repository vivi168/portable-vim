# Portable VIM

This is a portable .vimrc you can use on any computer without interfering with the default .vimrc.

Simply clone this repo in `~/.portable-vim` for example and then launch vim with :

```
vim -u ~/.portable-vim/vimrc
```

Don't forget to run `:PlugInstall` on the first launch.

## How to use ripgrep with fzf

If you have rg installed, you can add this line to your `~/.bash_profile` to make fzf use rg

```
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob     "!{.git/*,node_modules/*}"'
```

You can also use fd

```
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'
```
