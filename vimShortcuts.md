# Misc

| Command                           | Explanation                                               |
| --------------------------------- | --------------------------------------------------------- |
| `:sort u`                         | Keep only unique                                          |
| `vi{<ESC>`                        | Get to bottom in function or object                       |
| Vertical select, then `g C-A`     | Increment serially                                        |
| Vertical select, then `C-A`       | Increment by 1                                            |
| `[{`                              | Go to parent `{`                                          |
| `<C-r> and <C-w>`                 | Put word under cursor                                     |
| `:put=range(1,10,2)`              | Paste range (can omit arg3)                               |
| `:g/searchPattern/norm {command}` | Run normal command at all matching lines                  |
| `:grep txt \*`                    | Grep for txt everywhere in dir (cnext, cprev to navigate) |
| `:find {file}`                    | Find file                                                 |
| `:w !sudo tee % > /dev/null`      | Write current file as SU                                  |
| `:g/a/d`                          | Globally delete all containing 'a'                        |
| `:v/a/d`                          | Globally delete all NOT containing 'a'                    |
| `<C-w>K`                          | Vertical to horizontal split                              |
| `<C-w>H`                          | Horizontal to vertical split                              |
| `<C-w> c/o`                       | Close/close all except                                    |
| `&`                               | Repeat last substitute command                            |
| `q:`                              | Ex command window                                         |
| `q/`                              | Search window                                             |
| `@:`                              | Repeat last ex command                                    |
| `zM`                              | Close folds                                               |
| `zR`                              | Open folds                                                |
| `zE`                              | Reset folds                                               |
| `gn` / `gN`                       | Visual select search match                                |

# GIT

| Registers | Explanation           |
| --------- | --------------------- |
| `:`       | Last executed command |
| `.`       | Last inserted text    |
| `.`       | Last inserted text    |
| `/`       | Last searched text    |

| Command           | Explanation                                 |
| ----------------- | ------------------------------------------- |
| `git difftool`    | Use at project root, see diffs              |
| `:MergetoolStart` | Start merge tool                            |
| `:diffget`        | Use incoming changes                        |
| `:MergetoolStop`  | Prompt if successful to keep changes or not |

# Actions

| Action                                                                | Example Commands        |
| --------------------------------------------------------------------- | ----------------------- |
| `y` (yank), `t` (tag), `m` (mark), `s` (substitute), `sort`, `normal` | Various actions on text |

### Examples

| Command          | Explanation                       |
| ---------------- | --------------------------------- |
| `:8,$y`          | Yank from line 8 to end of file   |
| `:8,$t 40`       | Copy from line 8 to line 40       |
| `:8,$s`          | Last substitution command         |
| `:20c`           | Change starting at line 20        |
| `:20a`           | Append starting at line 20        |
| `:1,4 normal .`  | Repeat the last normal command    |
| `:1,4 normal @q` | Execute macro q from lines 1 to 4 |
