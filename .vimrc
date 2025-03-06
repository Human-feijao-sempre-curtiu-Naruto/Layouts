"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  




" PLUG-INS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')


  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'
  
  Plug 'itchyny/lightline.vim'
  "Plug 'whatyouhide/vim-gotham'
  
  Plug 'ycm-core/YouCompleteMe'

  Plug 'jiangmiao/auto-pairs'
  
  Plug 'SirVer/ultisnips'

  Plug 'honza/vim-snippet'
  
  Plug 'ervandew/supertab'
 
  Plug 'zxqfl/tabnine-vim'


call plug#end()

" }}}


" MAPEAMENTO --------------------------------------------------------------- {{{

" Aqui ficam os códigos de mapeamento.

map q :quit<CR>
map <C-s> :write<CR>


" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Isso vai ativar o código de dobramento.
" Usa o método de marcadores para realizar o dobramento.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Aqui ficam mais alguns códigos de Vimscript.
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:ycm_clangd_args=['--header-insertion=never']

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" }}}


" LINHA DE STATUS ----------------------------------------------------------- {{{
" 

" Aqui ficam os códigos da linha de status.
" Limpa a barra de status quando o vimrc é recarregado.
set statusline=

" Lado esquerdo da barra de status.
set statusline+=\ %F\ %M\ %Y\ %R

" Utiliza um divisor para separar o lado esquerdo do lado direito.
set statusline+=%=

" Lado direito da barra de status.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Mostra a barra de status na penúltima linha.
set laststatus=2


" Desabilitar a compatibilidade com vi, que pode causar problemas inesperados.
set nocompatible

" Habilitar a detecção do tipo de arquivo. O Vim será capaz de tentar detectar automaticamente o tipo de arquivo.
filetype on

" Habilitar plug-ins e carregar o plug-in correspondente ao tipo de arquivo detectado. 
filetype plugin on

" Carregar um arquivo de indentação correspondente ao tipo de arquivo detectado.
filetype indent on

" Ativar o realce de sintaxe.
syntax on

" Adiciona numeração ao lado esquerdo de cada linha.
set number

" Define o recuo como 4 espaços.
set shiftwidth=4

" Utiliza espaço ao invés de tabulações.
set expandtab

" Destaca os caracteres correspondentes á medida que você os digita durante uma busca.
set incsearch

" Sobrescreve a opção ignorecase se estiver buscando por letras maiúsculas.
"Isso permitirá que você procure especificamente por letras maiúsculas.
set smartcase

" Mostra o comando sendo executado.
set showcmd

" Mostra o modo em que você está.
set showmode

" Mostra as palavras correspondentes durante uma pesquisa.
set showmatch

" Utiliza destaque durante uma pesquisa.
set hlsearch

" Habilita o menu de preenchimento automático ao pressionar TAB.
set wildmenu

" Faz com que o wildmenu se comporte de ,modo semelhante ao autocompletar do Bash.
set wildmode=list:longest

" O Wildmenu ignorará arquivos com essas extensões.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let g:airline_theme = 'dracula'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'

colorscheme molokai



" }}}





















" Destaca a linha do cursor horizontalmente, diretamente abaixo dele.
"set cursorline
" Destaca a linha do cursor verticalmente, diretamente abaixo dele.
"set cursorcolumn
