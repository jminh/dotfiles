"# The percent of the screen the split pane Vimux will spawn should take up.
"# let g:VimuxHeight = "40"
"# Default: "20"


" Prompt for a command to run map
nnoremap <Leader>vp :VimuxPromptCommand<CR>


" Run last command executed by VimuxRunCommand
nnoremap <Leader>vl :VimuxRunLastCommand<CR>


" Inspect runner pane map
nnoremap <Leader>vi :VimuxInspectRunner<CR>


" Close vim tmux runner opened by VimuxRunCommand
nnoremap <Leader>vq :VimuxCloseRunner<CR>


" Interrupt any command running in the runner pane map
nnoremap <Leader>vs :VimuxInterruptRunner<CR>


" Clear the tmux history of the runner pane
nnoremap <Leader>vc :VimuxClearRunnerHistory<CR>


" Zoom the tmux runner page
nnoremap <Leader>vz :VimuxZoomRunner<CR>
" Zoom the runner pane. Once its zoomed, you will need
" to use tmux "<bind-key> z" to restore the runner pane.


