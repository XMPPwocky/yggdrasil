if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.nix         setfiletype nix
augroup END

command! -nargs=0 Format :call CocAction('format')

set termguicolors
colorscheme evening

set expandtab
set tabstop=2
set shiftwidth=2
