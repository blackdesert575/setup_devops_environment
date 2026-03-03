# vim

## Tools/Guides/Tips

* Vundle: plugins manager

* [What's a quick way to comment/uncomment lines in Vim?](https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim)
* [Vim Cheat Sheet](https://vim.rtorr.com/)
* [How to Do 90% of What Plugins Do (With Just Vim)](https://youtu.be/XA2WjJbmmoM)
    * see comments below the Youtube video for more tips with vim
      0:06:48 - finding files
      0:16:14 - tag jumping
      0:24:33 - autocomplete
      0:34:30 - file browsing
      0:38:20 - snippets
      0:51:02 - build integration
      0:57:40 - questions
      1:09:12 - plugins to use
* [vimrc設定教學](https://wiki.csie.ncku.edu.tw/vim/vimrc)
* [Vim Tips Wiki/Open vimrc file](https://vim.fandom.com/wiki/Open_vimrc_file)
* [Vim Tips Wiki/Example vimrc](https://vim.fandom.com/wiki/Example_vimrc)
* [vim-plug](https://github.com/junegunn/vim-plug)
    * Minimalist Vim Plugin Manager
    * [vim-plug/wiki/tutorial](https://github.com/junegunn/vim-plug/wiki/tutorial)

* [learnxinyminutes.com/vimscript](https://learnxinyminutes.com/vimscript/)

* comments tips
    * [whats-a-quick-way-to-comment-uncomment-lines-in-vim](https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim)

* Color theme
    * [tomasr/molokai](https://github.com/tomasr/molokai)
    * [ku1ik/vim-monokai](https://github.com/ku1ik/vim-monokai)
    * [catppuccin/vim](https://github.com/catppuccin/vim)
    * [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

```shell
#Insert Mode
i
a
o

#Command-line Mode
:set nu
:unset nu
:w
:q
:q!
:1,$s/pattern/change/gc
:%s/^→ s32244153: //g
:%s/ \d\{2}:\d\{2}$//g

#VISUAL BLOCK mode!!!
ctrl + v
# use keyboard ↑ ↓ → ← to select which lines to edit?
# Press:
# I: Insert before what's selected.
# A: Append after what's selected.
# c: Replace what's selected.

# Type the new text.
# Press Esc to apply the changes to all selected lines.
```
