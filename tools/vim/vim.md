# vim

## Tools/Guides/Tips

* Vundle: plugins manager

* [What's a quick way to comment/uncomment lines in Vim?](https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim)
* [Vim Cheat Sheet](https://vim.rtorr.com/)

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