 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'tpope/vim-rails.git'
 Bundle 'kien/ctrlp.vim'
 Bundle 'spf13/PIV'
 Bundle 'scrooloose/syntastic'
 Bundle 'bling/vim-airline'
 Bundle 'techlivezheng/tagbar-phpctags'
 Bundle 'jistr/vim-nerdtree-tabs'
 Bundle 'ervandew/supertab'
 Bundle 'vimwiki/vimwiki'
 Bundle 'toritori0318/vim-redmine'
 Bundle 'vim-scripts/Colour-Sampler-Pack'
 Bundle 'mbbill/undotree'
 Bundle 'scrooloose/nerdtree'
 Bundle 'tpope/vim-surround'
 Bundle 'godlygeek/tabular'
 Bundle 'majutsushi/tagbar'
 Bundle 'spf13/vim-colors'
 Bundle 'myusuf3/numbers.vim'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'mattn/webapi-vim'
 Bundle 'arnaud-lb/vim-php-namespace'
 Bundle 'mileszs/ack.vim'
 Bundle 'techlivezheng/vim-plugin-tagbar-phpctags'
 Bundle 'joonty/vdebug'
 Bundle 'scrooloose/nerdcommenter'

 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

 filetype plugin indent on     " required!


 set background=dark
 colorscheme molokai
 if has("autocmd")
    ""  Drupal *.module and *.install files.
   augroup module
       autocmd BufRead,BufNewFile *.module set filetype=php
       autocmd BufRead,BufNewFile *.install set filetype=php
       autocmd BufRead,BufNewFile *.test set filetype=php
       autocmd BufRead,BufNewFile *.inc set filetype=php
       autocmd BufRead,BufNewFile *.profile set filetype=php
       autocmd BufRead,BufNewFile *.view set filetype=php
   augroup END
 endif
 let mapleader=","
 syntax on
 set t_Co=256
 set nofoldenable
 set nospell
 set tags+=~/.vimtags
 map <C-N> :!drush cc all<CR>
 map ,,v :execute "!drush vget ".shellescape(expand("<cword>"), 1)<CR>
 map <C-C><C-E> :NERDTreeToggle <CR>
 map <leader>tt :TagbarToggle <CR>
 set foldlevelstart=99
 let g:DisableAutoPHPFolding = 1
 let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags/bin/phpctags'
 set expandtab
 set tabstop=2
 set shiftwidth=2
 set autoindent
 set smartindent
 syn sync minlines=1000
 let g:vdebug_options= {
		     \    "port" : 9000,
		     \    "server" : 'localhost',
		     \    "timeout" : 20,
		     \    "on_close" : 'detach',
  	  	     \    "break_on_open" : 0,
		     \    "ide_key" : '',
		     \    "remote_path" : "",
		     \    "local_path" : "",
		     \    "debug_window_level" : 0,
		     \    "debug_file_level" : 0,
		     \    "debug_file" : "",
		     \}
 set noswapfile

 let g:ctrlp_switch_buffer = 'Et'
 let g:miniBufExplMapCTabSwitchBufs = 1
 set mouse=a
 set wildmode=longest,list,full
 set wildmenu
