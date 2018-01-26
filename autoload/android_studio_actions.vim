" initialize

let spath = expand('<sfile>:p')
let s:actions_script = spath[0 : strridx(spath, 'autoload') - 1] . 'bin/android_studio_actions'

" public functions

function! android_studio_actions#run()
  call s:execute_actions_script('run', '')
endfunction

function! android_studio_actions#debug()
  call s:execute_actions_script('debug', '')
endfunction

function! android_studio_actions#rebuild()
  call s:execute_actions_script('rebuild', '')
endfunction

function! android_studio_actions#openfile(filename)
  call s:execute_actions_script('openfile', a:filename)
endfunction

function! android_studio_actions#current_file()
  let filename = expand('%:t')
  let line = line('.')
  return filename . ':' . line
endfunction


" private functions

function! s:execute_actions_script(action, arg)
  let command = s:actions_script . ' ' . a:action . ' ' . a:arg
  call system(command)
endfunction

