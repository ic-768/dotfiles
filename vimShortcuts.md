# Basic Commands

| Command                           | Explanation                                             |
|-----------------------------------|-------------------------------------------------------  |
| `:sort u`                         | Keep only unique                                        |
| `vi{<ESC>`                        | Get to bottom in function or object                     |
| Vertical select, then `g C-A`     | Increment serially                                      |
| Vertical select, then `C-A`       | Increment by 1                                          |
| `[{`                              | Go to parent `{`                                        |

# GIT

| Command          | Explanation                                 |
|------------------|---------------------------------------------|
| `git difftool`   | Use at project root, see diffs              |
| `:MergetoolStart`| Start merge tool                            |
| `:diffget`       | Use incoming changes                        |
| `:MergetoolStop` | Prompt if successful to keep changes or not |

# Coc Explorer

| Command                         | Explanation                                |
|---------------------------------|--------------------------------------------|
| `:f`                            | Search                                     |
| `:F`                            | Fuzzy search                               |

# Vim Commands

| Command                                     | Explanation                                      |
|---------------------------------------------|--------------------------------------------------|
| `grep -rl ${word} | cut -d':' -f1`          | Grep recursively and open files in vim           |
| `:n` and `:N`                               | Move between files (single found instance)       |
| `:bn` and `:p`                              | Move between buffers (won't see same file again) |
| `:wn`                                       | Write and next                                   |

# Command-Line Mode

| Command                               | Explanation                                   |
|---------------------------------------|-----------------------------------------------|
| `<C-r> and <C-w>`                     | Put word under cursor                         |
| `:put=range(1,10,2)`                  | Paste range (can omit arg3)                   |
| `:g/searchPattern/norm {command}`     | Run normal command at all matching lines      |

# Text-Body Actions

| Command                           | Explanation                        |
|-----------------------------------|------------------------------------|
| `:{start},{end} {action} {arg}`   | Actions on lines from start to end |
| `.`                               | Current line                       |
| `%`                               | All lines                          |
| `$`                               | Last line                          |
| `+-20`                            | Relative lines                     |

### Actions

| Action                                                                   | Example Commands                      |
|--------------------------------------------------------------------------|---------------------------------------|
| `y` (yank), `t` (tag), `m` (mark), `s` (substitute), `sort`, `normal`    | Various actions on text               |

### Examples

| Command           | Explanation                      |
|-------------------|----------------------------------|
| `:8,$y`           | Yank from line 8 to end of file  |
| `:8,$t 40`        | Copy from line 8 to line 40      |
| `:8,$s`           | Last substitution command        |
| `:20c`            | Change starting at line 20       |
| `:20a`            | Append starting at line 20       |
| `:1,4 normal .`   | Repeat the last normal command   |
| `:1,4 normal @q`  | Execute macro q from lines 1 to 4|

# Extras

| Command                               | Explanation                                               |
|---------------------------------------|-----------------------------------------------------------|
| `:grep txt \*`                        | Grep for txt everywhere in dir (cnext, cprev to navigate) |
| `:edit % <TAB>`                       | Use filename in ex                                        |
| `:edit %:h <TAB>`                     | Use filepath in ex                                        |
| `:set path += {dir}`                  | Make dir contents available through find                  |
| `:set path += {dir}/\*\*`             | All subdirs                                               |
| `:find {file}`                        | Find file                                                 |
| `:w !sudo tee % > /dev/null`          | Write current file as SU                                  |
| `:g/a/d`                              | Globally delete all containing 'a'                        |
| `:v/a/d`                              | Globally delete all NOT containing 'a'                    |

# Normal Mode

| Command                  | Explanation                      |
|--------------------------|----------------------------------|
| `&`                      | Repeat last substitute command   |
| `q:`                     | Ex command window                |
| `q/`                     | Search window                    |
| `@:`                     | Repeat last ex command           |

# Insert Mode

| Command                  | Explanation                              |
|--------------------------|------------------------------------------|
| `<C-r>0`                 | Paste register 0                         |
| `<C-r>=`                 | Expression register                      |
| `<C-r>=24\*8<CR>`        | Paste expression register                |

# Suggestions

| Command                  | Explanation                              |
|--------------------------|------------------------------------------|
| `<C-x><C-f>`             | File suggestions                         |
| `<C-x><C-l>`             | Line suggestions                         |


# Buffers

| Command                | Explanation                             |
|------------------------|-----------------------------------------|
| `:ls`                  | List buffers                            |
| `:bd`                  | Close buffer                            |
| `:bufdo bd`            | Close all buffers                       |
| `:sb`                  | Switch to open buffer                   |

# Arg List

| Command                | Explanation                             |
|------------------------|-----------------------------------------|
| `:args {files}`        | Populate arg list                       |
| `:argdo {ex command}`  | Run ex command on all arg files         |

# Splits

| Command                | Explanation                              |
|------------------------|------------------------------------------|
| `<C-w>K`               | Vertical to horizontal split             |
| `<C-w>H`               | Horizontal to vertical split             |
| `<C-w> c/o`            | Close/close all except                   |
