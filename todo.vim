let today=strftime('%Y-%m-%d')

syntax match TodoDate /^\d\d\d\d-\d\d-\d\d /
highlight TodoDate guibg=white guifg=blue

syntax match TodoToday /^2013-05-20 /
highlight TodoToday guibg=white guifg=green

syntax match TodoContext '@\w\+'
highlight TodoContext guibg=white guifg=red

syntax match TodoProject '+\w\+'
highlight TodoProject guibg=white guifg=purple

syntax match TodoDone /^x\s.\+/
highlight TodoDone guibg=white guifg=gray

map <silent> ts :sort<CR>
map <silent> td Ix <Esc>
map <silent> tt O2013-05-22     " tt when in normal mode to create a new task with today's date
imap <C-t> 2013-05-22       " Ctrl-T to add today's date when in insert mode

set guioptions-=T
set guifont=Menlo:h14
set lines=40 columns=90
set cursorline
hi CursorLine gui=bold
