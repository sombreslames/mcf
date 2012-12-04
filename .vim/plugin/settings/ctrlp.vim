let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Number of items to display
let g:ctrlp_max_height = 12

" Default to filename searches
let g:ctrlp_by_filename = 1

" " Additional mapping for buffer search
" nnoremap <silent> ,b :CloseSingleConque<CR>:CtrlPBuffer<cr>
" nnoremap <silent> <C-b> :CloseSingleConque<CR>:CtrlPBuffer<cr>
"
" " Cmd-Shift-P to clear the cache
" nnoremap <silent> <D-P> :ClearCtrlPCache<cr>
"

nnoremap <Leader>.. :CtrlP<CR>

" Idea from:
" http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much more likely to find the correct thing first.
nnoremap <Leader>.s :CtrlP src<CR>
nnoremap <Leader>.h :CtrlP include<CR>
nnoremap <Leader>.i :CtrlP impl<CR>
nnoremap <Leader>.b :CtrlPBuffer<CR>
nnoremap <Leader>.t :CtrlPBufTag<CR>
nnoremap <Leader>.T :CtrlPBufTagAll<CR>

" map ,jh :CloseSingleConque<CR>:CtrlP app/helpers<CR>
" map ,jl :CloseSingleConque<CR>:CtrlP lib<CR>
" map ,jp :CloseSingleConque<CR>:CtrlP public<CR>
" map ,js :CloseSingleConque<CR>:CtrlP spec<CR>
" map ,jf :CloseSingleConque<CR>:CtrlP fast_spec<CR>
" map ,jd :CloseSingleConque<CR>:CtrlP db<CR>
" map ,jC :CloseSingleConque<CR>:CtrlP config<CR>
" map ,jV :CloseSingleConque<CR>:CtrlP vendor<CR>
" map ,jF :CloseSingleConque<CR>:CtrlP factories<CR>
" map ,jT :CloseSingleConque<CR>:CtrlP test<CR>
"
" "Cmd-(m)ethod - jump to a method (tag in current file)
" map ,m :CloseSingleConque<CR>:CtrlPBufTag<CR>
"
" "Ctrl-(M)ethod - jump to a method (tag in all files)
" map ,M :CloseSingleConque<CR>:CtrlPBufTagAll<CR>
