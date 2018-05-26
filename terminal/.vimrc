set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
"Plugin 'derekwyatt/vim-scala'
Plugin 'tomtom/tcomment_vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'tpope/vim-rails'
" Plugin 'netrw.vim'
Plugin 'othree/html5.vim'
"Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/syntastic'
"Plugin 'taglist.vim'
Plugin 'javacomplete'
Plugin 'mattn/gist-vim'
"Plugin 'mattn/webapi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
"Plugin 'hsanson/vim-android'
"Plugin 'yuratomo/java-api-android'
"Plugin 'tfnico/vim-gradle'
Plugin 'pangloss/vim-javascript'

call vundle#end()

" Bundle 'terryma/vim-multiple-cursors' "don't know how to use

filetype on

"autocompletion stuff
" let g:android_sdk_path = '/Users/charlesweng/Documents/java/Android/ADT/platform-tools'
" setlocal omnifunc=javacomplete#Complete
" let g:EclimCompletionMethod = 'omnifunc'
" let g:SuperTabDefaultCompletionType = 'context'


"remap esc to ctrl-c
noremap <C-C> <esc>
" ino jj <esc>
" cno jj <c-c>

"ctrlp config
set runtimepath^=~/.vim/plugins/ctrlp.vim
let g:ctrlp_max_files = 500
"search current directory instead of root
"let g:ctrlp_working_path_mode = 0

"multi-cursor config - don't know how to use friggin bugs out
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_key='g<C-n>'
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

"solarized color scheme
syntax enable

"solarized preset

" let g:solarized_visibility = "high"
" let g:solarized_constrast = "high"

" set background=dark
"  if has('gui_running')
"      set background=light
"  else
"      set background=light
"  endif
" colorscheme solarized
" let g:solarized_termcolors = 256

"spacing
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
filetype plugin indent on

"lines
set nu

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          "exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir

