# android-studio-actions.vim

Operate Android Studio from Vim

## Precondition

The Keymap of Android Studio is set as follows.

|Command|Key|
|---|---|
|Run:    |cmd + t|
|Debug:  |cmd + r|
|Rebuild:|cmd + b|

## Usage

- Run

```vim
:AndroidStudioActionsRun
```

- Debug

```vim
:AndroidStudioActionsDebug
```

- Rebuild

```vim
:AndroidStudioActionsRebuild
```

- Open current file

```vim
:AndroidStudioActionsOpenFile
```

## Install

```
call dein#add('dsk0701/android-studio-actions.vim')
```

## Key mappings

```vim
nnoremap <silent> <Plug>(android-studio-actions-run)        :<C-u>AndroidStudioActionsRun<Return>
nnoremap <silent> <Plug>(android-studio-actions-debug)      :<C-u>AndroidStudioActionsDebug<Return>
nnoremap <silent> <Plug>(android-studio-actions-rebuild)    :<C-u>AndroidStudioActionsRebuild<Return>
nnoremap <silent> <Plug>(android-studio-actions-openfile)   :<C-u>AndroidStudioActionsOpenFile<Return>
```
