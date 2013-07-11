My vim config
=============
This is [my](http://twitter.com/mesirendon) [personal](https://github.com/SealOvBelial) vim config. It's built from [Tpope's Pathogen](https://github.com/tpope/vim-pathogen) and some bundles. Take it under your own risk.
This build is created to improve my own personal experience with LaTeX, Perl, Ruby and PHP, as well as JavaScript and CSS.

It looks something like this:
![my vim](https://raw.github.com/SealOvBelial/dotvim/master/screenshot01.png)

Installation
------------
`git clone git@github.com:SealOvBelial/dotvim.git ~/.vim`

Create SymLinks
---------------
`ln -s ~/.vim/vimrc ~/.vimrc`

Adding a new submodule
----------------------
It's highly recommended to add submodules from repos that consider Pathogen as the main installer. For instance here is the way to add new submodules:

```
cd ~/.vim
git submodule add git@github.com:{user}/{repo}.git bundle/{suitable-name}
```

Updating submodules
-------------------
```
cd ~/.vim
git submodule init
git submodule update
```

Upgrading bundled plugins
-------------------------
Upgrading a single bundled plugin
```
cd ~/.vim/bundle/{plugin}
git pull origin master
```

Upgrading ALL the bundled plugins
```
cd ~/.vim
git submodule foreach git pull origin master
```

Latex integration
-----------------
In order to do a proper integration with LaTeX, please install the latex support for vim as follows:
```
sudo apt-get install vim-latex vim-addons-manager latex-mk
```
And that's all.

Just in case: this LaTeX submodule isn't a git submodule. Now you must run: `vim-addons -w install latex-suite`, this will create the following folders in the `.vim` folder:
```
.vim/
├── compiler
├── doc
├── ftplugin
│   └── latex-suite
│       ├── dictionaries
│       ├── macros
│       ├── packages
│       └── templates
├── indent
└── plugin
```

I highly recommend you to delete them and use the ones under the `bundle/latex` folder... or if you want to improve your own latex scripts, replace the content in `bundle/latex` with those.

And also be sure that your vimrc file has this lines:
```
set runtimepath+=/usr/share/vim/addons
set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"
```

Current submodules
------------------
List of current submodules:
```
bundle/
├── ack
├── aligner
├── autoclose
├── calendar
├── colorschemes
├── commentary
├── CtrlP
├── easymotion
├── fugitive
├── latex
├── nerdcommenter
├── nerdtree
├── omnicpp
├── perlsupport
├── pwrline
├── repeat
├── snipmate
├── solarized
├── surround
├── taglist
├── textobj-indent
└── textobj-user
```

License
-------
Distributed under the same terms as Vim itself. See `:help license`.
