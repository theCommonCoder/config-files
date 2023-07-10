""" Editing and Reloading the Config
set clipboard+=unnamed
set clipboard+=ideaput
nnoremap \e :e ~/.ideavimrc<CR>
map \r <Action>(IdeaVim.ReloadVimRc.reload)

""" Vim settings
set scrolloff=10
set linenumber
set rnu
set clipboard+=unnamed


""" The Escape button
map <C-c> <Esc>

""" The Leader Key
let mapleader=" "

""" Distraction Free Mode
map <c-z> <Action>(ToggleDistractionFreeMode)

""" Terminal
map <c-t> <Action>(ActivateTerminalToolWindow)
map <leader>t <Action>(Terminal.OpenInTerminal)

""" Navigation
map <c-\> <Action>(SplitVertically)
map <c--> <Action>(SplitHorizontally)
map <c-=> <Action>(Unsplit)
map <c-m> <Action>(MoveEditorToOppositeTabGroup)

sethandler <c-j> a:vim
sethandler <c-k> a:vim
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

map <TAB> <Action>(PreviousTab)
map <s-TAB> <Action>(NextTab)

map <Leader>en <Action>(EditSourceInNewWindow)
map <Leader>n <Action>(NextWindow)

map <Leader>q <Action>(CloseContent)
map <Leader>qa <Action>(CloseAllEditors)

""" Editing source code
set ideajoin
set idearefactormode=keep

vnoremap < <gv
vnoremap > >gv

map [[ <Action>(MethodUp)
map ]] <Action>(MethodDown)

map zc <Action>(CollapseRegion)
map zo <Action>(ExpandRegion)
map <leader>zc <Action>(CollapseAllRegions)
map <leader>zo <Action>(ExpandAllRegions)

map <leader>c <Action>(CommentByLineComment)

map <leader>r <Action>(Refactorings.QuickListPopupAction)
"map <Leader>=  <Action>(ReformatCode)
map <leader>o <Action>(OptimizeImports)

map <c-r> <Action>(RecentFiles)
map <leader>l <Action>(RecentLocations)
map <leader>h  <Action>(LocalHistory.ShowHistory)

map ge <Action>(GotoNextError)
map gE <Action>(GotoPreviousError)

nnoremap <leader>= :write<CR>

""" Searching and Source Code Navigation
set incsearch

map <c-/> <Action>(FindInPath)
map <c-a> <Action>(GotoAction)
map <c-f> <Action>(GotoFile)
map <leader>u <Action>(FindUsages)

map <leader>s <Action>(GotoRelated)
map <leader>h <Action>(CallHierarchy)
map <leader>b <Action>(ShowNavBar)
map <c-s> <Action>(FileStructurePopup)
map <c-o> <Action>(GotoSymbol)
map gc <Action>(GotoClass)
map gi <Action>(GotoImplementation)
map gd <Action>(GotToDeclaration)
map gp <Action>(GotToSuperMethod)
map gt <Action>(GotoTest)
map gb <Action>(Back)
map gf <Action>(Forward)

""" Tool windows
map <c-p> <Action>(JumpToLastWindow)
map <c-x> <Action>(HideAllWindows)

""" Running and Debugging
map ,r <Action>(ContextRun)
map ,c <Action>(RunClass)
map ,f <Action>(ChooseRunConfiguration)
map ,t <Action>(ActivateRunToolWindow)
map ,u <Action>(Rerun)
map ,F <Action>(ChooseDebugConfiguration)

"map ,f <Action>(RerunFailedTests)

map ,b <Action>(ToggleLineBreakpoint)
map ,d <Action>(ContextDebug)
map ,n <Action>(ActivateDebugToolWindow)





