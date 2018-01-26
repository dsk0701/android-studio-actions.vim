if exists('g:loaded_android_studio_actions')
  finish
endif

command! AndroidStudioActionsRun      :call android_studio_actions#run()
command! AndroidStudioActionsDebug    :call android_studio_actions#debug()
command! AndroidStudioActionsRebuild  :call android_studio_actions#rebuild()
command! AndroidStudioActionsOpenFile :call android_studio_actions#openfile(android_studio_actions#current_file())

nnoremap <silent> <Plug>(android-studio-actions-run)        :<C-u>AndroidStudioActionsRun<Return>
nnoremap <silent> <Plug>(android-studio-actions-debug)      :<C-u>AndroidStudioActionsDebug<Return>
nnoremap <silent> <Plug>(android-studio-actions-rebuild)    :<C-u>AndroidStudioActionsRebuild<Return>
nnoremap <silent> <Plug>(android-studio-actions-openfile)   :<C-u>AndroidStudioActionsOpenFile<Return>

let g:loaded_android_studio_actions = 1
