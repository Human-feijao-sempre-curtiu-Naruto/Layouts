
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




" PLUG-INS
call plug#begin('~/.vim/plugged')

  Plug 'preservim/nerdtree'
  
  Plug 'ycm-core/YouCompleteMe'

  Plug 'jiangmiao/auto-pairs'
  
  Plug 'SirVer/ultisnips'

  Plug 'honza/vim-snippets'
  
  Plug 'ervandew/supertab'
 
  Plug 'vim-airline/vim-airline'
  
  Plug 'Vim-airline/vim-airline-themes'

call plug#end()

" MAPEAMENTO
" Aqui ficam os códigos de mapeamento.

map q :quit<CR>
map <C-s> :write<CR>

" VIMSCRIPT 

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

" LINHA DE STATUS

" Aqui ficam os códigos da linha de status.
syntax on          " Ativa a coloração de sintaxe
filetype plugin indent on " Habilita plugins e indentação automática
set tabstop=4      " Define a largura da tabulação como 4 espaços
set shiftwidth=4   " Define o recuo ao pressionar Tab como 4 espaços
set expandtab      " Converte Tabs em espaços
set autoindent     " Mantém a indentação da linha anterior
set number         " Exibe número da linha
set scrolloff=5    " Mantém 5 linhas de margem ao rolar
set wildmenu       " Melhora a navegação no modo de comando
set clipboard=unnamedplus " Copia e cola diretamente do sistema
set splitright     " Abre novas divisões à direita
set splitbelow     " Abre novas divisões abaixo

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

colorscheme koehler
"colorscheme molokai
