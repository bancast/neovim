Neovim container
================

The simplest way to get started with neovim.

This docker container was created for the purpose of providing a portable
editing environment on any computer running docker.

The image was made to be as small as possible so that you can start editing
quickly.

Running
-------

To run this you can simply run the following command.

    docker run -it --rm -v $(pwd):/src jackatbancast/neovim

This will run a temporary container with the current directory mounted for
editing.

What's included?
----------------

Included in the container are:

* git
* neovim
* vim plugins
  * editorconfig
  * fugitive
  * nerdtree
  * syntastic
  * surround
  * ctrlp
  * vim-colors-solarized
  * git-gutter

Maintainers
-----------

* Jack Stephenson <docker@bancast.net>

License
-------

GPLv3
