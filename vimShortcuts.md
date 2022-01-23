vim `grep -r ${word} | cut -d':' -f1` - grep recursively and open files in vim
In vim, :n and :N to move between files

:%d - delete whole file
<c-n> - explore in new tab

#FZF
:Files
:Buffers

#NORMAL MODE
& = repeat last substitute command
<C-a> and <C-x> = arithmetic on next number
gv = last visual selection
q: ex command window
q/ search window
<C-z> suspend (go to terminal)

#INSERT MODE
<C-o> = one-shot command
<C-r>0 = paste
<C-r>= = expression register
<C-r>=24\*8<CR> = paste expression register

##TEXT-BODY ACTIONS
:{start},{end} {action} {arg}

. = current line
% = all lines
$ = last line
+-20 = relative lines

actions = y,t,m,s, sort, normal etc.

###EXAMPLES
:8,$y = yank 
:8,$t 40 = copy to line 40
:8,$s = last subtitution command
:/text/,20
:20c = change
:20a = append
:1,4 normal .
:1,4 normal @q

##OTHER
<C-r> <C-w> = copy word to ex
:<C-f> command line window
@: = repeat last ex
:grep txt \* = grep for txt everywhere in dir ( cnext, cprev to navigate)

:edit % <TAB> = use filename in ex
:edit %:h <TAB> = use filepath in ex

:set path += {dir} = make dir contents available through find
:set path += {dir}/\*\* = all subdirs
:find {file}

:E = netrw
:w !sudo tee % > /dev/null = write current file as SU

:g/a/d = globally delete all containing a
:v/a/d = globally delete all NOT containing a

#LISTS
:changes
g; and g,

:jumps
<C-o> and <C-i>

#TIPS
REGISTERS ARE JUST TEXT. YOU CAN PASTE A MACRO, EDIT IT, AND CUT IT BACK IN!!!
g0 = go to start of display line
g$ = go to end of display line
"0 = yank register

W = gets around faster
daw = delete word cleanly
ea = append to word
is/as = sentence motions
g& = rerun substitution with g flag
v/ = visually select large text
gf open file under cursor

#SUGGESTIONS
<C-x><C-f> = file suggestions
<C-x><C-l> = line suggestions
<C-n> = next suggestion
<C-p> = previous suggestion
<C-y> = accept suggestion

##Consistent Macros
Record macro a -> see macro a with :reg a -> qA append to macro balls
apply macro to a selection : visual select -> :normal @a

#VIMSCRIPT
:let i=i
:let i+=1
I<C-r>=i<CR> = insert i
"=i<CR>p = paste i

##MARKS
ma = buffer mark
mA = global mark
'a = line
`a = exact position `
'' = last jump
'. = last change
'< '> = last selection

##BUFFERS
:ls
:bfirst
:blast
:bn
:bp
:wn = write and next
:bd = close buffer
:bufdo bd = close all buffers
:sb = switch to open buffer

##ARG LIST
:args
:args {files} = populate arg list
:argdo {ex command} = ex command on all arg files

##SPLITS
<C-w>s = create horizontal
<C-w>v = create vertical

<C-w> w/h/j/k/l = navigate
<C-w> W/H/J/K/L = send window to extremity

<C-w><C-r> = swap two splits

<C-w>K = vertical to horizontal
<C-w>H = horizontal to vertical

<C-w> c/o = close/close all except
<C-w>= = equalise height
<C-w>_ = maximise height
<C-w>| = maximise width
N<C-w>_ = height to n rows
N<C-w>| = width to n rows

### Tabs are for different jobs, use windows for relevant things

:lcd {path} = set working directory for split
:windo lcd {path} = working dir for whole window

##TABS
<C-w>T = move split to new tab
:tabc = close current tab
:tabo = close all except
3gt = goto third tab
:tabm N = move tab

## Vim Surround

ys $OBJECT $SYMBOL = add symbol around object
yss = sentence
VS $SYMBOL = surround

:r read file
zM = refold
zf = codeFold
za = unfold zE = delete all folds
zR = unfold all

# BASICS

@: = run last colon command

#EXTERNAL COMMANDS & UTILITIES
:%s/old/new/gc = find and substitute interactively

###BULK RENAME
qmv -f do = bulk rename, see destination only
:r !ls = Read "ls"
:%s/._/mv & = Substitute "file._" with "mv file.\*", and add file name once more NOTE: &=WHATEVER WAS MATCHED BY REGEX.
Block paste
When done: :w !sh

#NETRW
:n \*\* = recursively open in directory
% = open new file for editing
d = new directory
R = rename file
D = delete file
<C-o> = return to prev file

#POPUPS
