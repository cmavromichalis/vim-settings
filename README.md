# vim-settings
My settings for working in go; forked from Sam

## Installation

### Requirements
* At least vim 8
* curl
* git
* go 1.9 - For golint(golang.org/x/lint/golint)
* c-tags - For tagbar(github.com/majutsushi/tagbar)
* The following:

⋅⋅⋅ apt-get install c-tags
⋅⋅⋅ go get -u -v golang.org/x/tools/cmd/guru
⋅⋅⋅ go get github.com/axw/gocov/gocov
⋅⋅⋅ go get -u github.com/jstemmer/gotags
⋅⋅⋅ go get golang.org/x/tools/cmd/goimports
⋅⋅⋅ go get -u golang.org/x/lint/golint
⋅⋅⋅ go get -u github.com/kisielk/errcheck

Clone the repository:
`$ git clone https://github.com/cmavromichalis/vim-settings.git`

Run the build script by using `$ ./build.sh` from the root folder of the
repository. You may have to use `$ chmod +x build.sh` to make the script
executable.

The dotfiles are then installed with the old dotfiles copied and given a ".bak"
suffix.

Once the plugins have been installed by running vim in the background, the
plugin installation status and this readme will open in a split.

## Basics
[vim-plug](https://github.com/junegunn/vim-plug) is used as the plugin manager
here. [vim-sensible](https://github.com/tpope/vim-sensible) is used to provide
very basic settings, the vimrc itself only really relates to settings managing
plugins, personal settings, etc.

## List of Plugins
* [vim-sensible](https://github.com/tpope/vim-sensible): Default vim settings
* [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
* [vim-airline](https://github.com/vim-airline/vim-airline): Status bar
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): Airline theme pack
* [vim-bufferline](https://github.com/bling/vim-bufferline): Airline plugin
* [vim-polyglot](https://github.com/sheerun/vim-polyglot): Language pack
* [fzf](https://github.com/junegunn/fzf): Fuzzy finder
* [fzf.vim](https://github.com/junegunn/fzf.vim): fzf vim integration
* [ale](https://github.com/w0rp/ale): Syntax checker
* [NERDTree](https://github.com/scrooloose/nerdtree): File tree explorer
* [vim-go](https://github.com/fatih/vim-go): Go development plugin for git
* [molokai](https://github.com/fatih/molokai): Molokai color scheme for Vim
* [gocode](https://github.com/mdempsky/gocode): An autocompletion daemon for Go
* [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope
* [vim-syntastic](https://github.com/vim-syntastic/syntastic): Syntax checking hacks for vim

## Keybindings
By default, the \<Leader\> key in vim is the backslash. The full listing of keybindings in
the vimrc:

|Binding    |Command                    |Comment                                                |
|-----------|---------------------------|-------------------------------------------------------|
|\<Leader\>c|:lclose<CR>                |Closes loclist (where syntax error messages show up)   |
|\<Leader\>o|:lopen<CR>                 |Opens loclist                                          |
|\<Leader\>f|:Files<CR>                 |fzf window to open a new file                          |
|\<Leader\>b|:Buffers<CR>               |fzf window to go to open buffer                        |
|\<Leader\>n|:bn<CR>                    |Switch to next buffer                                  |
|\<Leader\>p|:bp<CR>                    |Switch to previous buffer                              |
|\<Leader\>t|:NERDTreeToggle<CR>        |Toggle NERDTree window                                 |

## License
This repository released under the MIT License, all plugins are released
under their respective licenses.
