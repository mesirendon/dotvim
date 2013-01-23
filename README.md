My vim config
=============
This is [my](http://twitter.com/mesirendon) personal vim config. It's built from [Tpope's Pathogen](https://github.com/tpope/vim-pathogen) and some bundles. Take it under your own risk.
This build is created to improve my own personal experience with Perl, Ruby and PHP, as well as JavaScript and CSS.

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

License
-------
Distributed under the same terms as Vim itself. See `:help license`.
