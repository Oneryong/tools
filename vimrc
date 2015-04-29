set tabstop=8
set softtabstop=8
set shiftwidth=8
set ruler
set cursorline
set showmatch
set completeopt=longest,menu

set syntax=on
colorscheme default

set autoindent
set cindent

set hls

set nu

"/* 加入描述 */
"*.c/*.h/*.cpp 
function! SetComment1()
	call setline(1,"/********************************************************") 
	call append(1, "* ") 
	call append(2, "* Author: zhongwanyong")
	call append(3, "* Email:  zwy249348626@163.com")
	call append(4, "* Create Time: ".strftime("%Y/%m/%d %H:%M:%S")) 
	call append(5, "* File Name: ".expand("%:t")) 
	call append(6, "* Description: ") 
	call append(7, "*")
	call append(8, "********************************************************/") 
endfunction

"python/shell
function! SetComment2()
	call setline(1,"#! /usr/bin/env") 
	call append(1,"#########################################################") 
	call append(2,"#") 
	call append(3,"#Author: zhongwanyong")
	call append(4,"#Email:  zwy249348626@163.com")
	call append(5,"#Create Time: ".strftime("%Y/%m/%d %H:%M:%S")) 
	call append(6,"#File Name: ".expand("%:t")) 
	call append(7,"#Description: ") 
	call append(8,"#")
	call append(9,"#########################################################") 
endfunction

"RST
function! SetComment3()
	call setline(1,"#########################################################") 
	call append(1," ") 
	call append(2," Author: zhongwanyong")
	call append(3," Email:  zwy249348626@163.com")
	call append(4," Create Time: ".strftime("%Y/%m/%d %H:%M:%S")) 
	call append(5," File Name: ".expand("%:t")) 
	call append(6," Description: ") 
	call append(7," ")
	call append(8,"#########################################################") 
endfunction

" 当用VIM新建 .h .c .cpp .py .sh 等文件时自动调用函数
autocmd BufNewFile *.[ch],*.cpp exec ":call SetComment1()"
autocmd BufNewFile *.py,*.sh exec ":call SetComment2()" 

:map <F2> :call SetComment1()<CR>GA
:map <F3> :call SetComment2()<CR>ggA 
:map <F4> :call SetComment3()<CR>GA 
:map <F5> gg=G
