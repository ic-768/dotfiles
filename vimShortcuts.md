in function or object `vi{<ESC>`
gets you to bottom 

vertical select, then `g C-A`
increment serially
0
0
0
0

vertical select, then `C-A`
increment by 1



`\C[A-Z]`
Enable case-sensitive search, look for capital character

`"0p`
paste yank register
`[{`
go to parent {

#GIT
`git difftool`
use at project root, see diffs

`:MergetoolStart`
`:diffget` 
use incoming changes

`:MergetoolStop`
prompts if successful to keep changes or not

# Coc explorer
`:E` open / close
`:S` open window mode
`v or s`
 (dir) make top of tree
 (file) open in split
`l/h` expand/collapse directory
`a` add file
`A` add directory
`dF` delete
`:f` search
`:F` fuzzy search
`J,K` select 
`ic` preview

vim `grep -rl ${word} | cut -d':' -f1` - grep recursively and open files in vim
In vim, :n and :N to move between files ( single found instance between them )
        :bn and :p to move between buffers ( won't see same file again )
`:wn`
 write and next

:%d - delete whole file

#COMMAND-LINE MODE
`<C-r> and <C-w>`
 put word under cursor

`:put=range(1,10,2)`
 paste range ( can omit arg3 )

`:g/searchPattern/norm {command}`
 run normal command at all matching lines

##TEXT-BODY ACTIONS
:{start},{end} {action} {arg}

`.` current line
`%` all lines
`$` last line
`+-20` relative lines

`actions`
 y,t,m,s, sort, normal etc.

###EXAMPLES
`:8,$y` yank 
`:8,$t 40` copy to line 40
`:8,$s` last subtitution command
`:20c` change
`:20a` append
:1,4 normal .
:1,4 normal @q

## EXTRAS
`:grep txt \*`
 grep for txt everywhere in dir ( cnext, cprev to navigate)

`:edit % <TAB>`
 use filename in ex

`:edit %:h <TAB>`
 use filepath in ex

`:set path += {dir}`
 make dir contents available through find

`:set path += {dir}/\*\*`
 all subdirs
:find {file}

`:E`
 netrw

`:w !sudo tee % > /dev/null`
 write current file as SU

`:g/a/d`
 globally delete all containing a

`:v/a/d`
 globally delete all NOT containing a

#NORMAL MODE
`&` repeat last substitute command

`<C-a> and <C-x>`
 arithmetic on next number

`gv` last visual selection
`q:` ex command window
`q/` search window
`<C-z>` suspend (go to terminal)
`@:` repeat last ex

#INSERT MODE
`<C-o>` one-shot command
`<C-r>0` paste
`<C-r>=` expression register
`<C-r>=24\*8<CR>` paste expression register

#LISTS
:changes
g; and g,

:jumps
<C-o> and <C-i>

#TIPS
`g0`
go to start of display line
`g$`
go to end of display line
`"0`
yank register
`daw`
delete word cleanly
`g&`
rerun substitution with g flag
`v/`
visually select large text

#SUGGESTIONS
`<C-x><C-f>`
file suggestions
`<C-x><C-l>`
line suggestions
`<C-n>`
next suggestion
`<C-p>`
previous suggestion
`<C-y>`
accept suggestion

#VIMSCRIPT
`:let i` i
`:let i+` 1
`I<C-r>=i<CR>` insert i
`"=i<CR>p` paste i

##MARKS
`ma` buffer mark
`mA` global mark
`'a` line
`\`a` `exact position
`''` last jump
`'.` last change
`'< '>` last selection

##BUFFERS
:ls
:bfirst
:blast
:bn
:bp
`:bd` close buffer
`:bufdo bd` close all buffers
`:sb` switch to open buffer

##ARG LIST
:args `:args {files}`
 populate arg list `:argdo {ex command}`
 ex command on all arg files

##SPLITS
`<C-w>s`
 create horizontal
`<C-w>v`
 create vertical
`<C-w> w/h/j/k/l`
 navigate
`<C-w> W/H/J/K/L`
 send window to extremity
`<C-w><C-r>`
 swap two splits
`<C-w>K`
 vertical to horizontal
`<C-w>H`
 horizontal to vertical
`<C-w> c/o`
 close/close all except
`<C-w>=`
 equalise height
`<C-w>_`
 maximise height
`<C-w>|`
 maximise width
`N<C-w>_`
 height to n rows
`N<C-w>|`
 width to n rows{
`:lcd {path}`
 set working directory for split
`:windo lcd {path}`
 working dir for whole window

##TABS
`<C-w>T`
 move split to new tab
`:tabc`
 close current tab
`:tabo`
 close all except
`3gt`
 goto third tab
`:tabm N`
 move tab

## Vim Surround
`ys $OBJECT $SYMBOL`
 add symbol around object
`yss`
 sentence
`VS $SYMBOL`
 surround

:r read file
`zM`
 refold
`zf`
 codeFold
`za`
 unfold 
`zE`
 delete all folds
`zR`
 unfold all

# BASICS
`@:`
 run last colon command

#EXTERNAL COMMANDS & UTILITIES
`:%s/old/new/gc`
 find and substitute interactively

###BULK RENAME
`qmv -f do`
 bulk rename, see destination only
`:r !ls`
 Read "ls"
`:%s/._/mv & = Substitute "file._" with "mv file.\*", and add file name once more NOTE: &`
WHATEVER WAS MATCHED BY REGEX.
Block paste
When done: :w !sh

#NETRW
`i`
 cycle between thin long and tree listing
`gn`
 make directory top of tree
`:n \*\*`
 recursively open in directory
`%`
 open new file for editing
`d`
 new directory
`R`
 rename file
`D`
 delete file
`<C-o>`
 return to prev file
