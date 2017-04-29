execute pathogen#infect()
syntax on
set number

noremap <F1> :NERDTreeToggle<CR>
noremap <F10> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"Syntastical
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Fix issues with editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
