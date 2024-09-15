nvim-configs
============
My Neovim configs to share a) with you and b) between my computers.

It is very bare-bones and focusses on integrating the mouse (<S-ScrollWheel> and <C-ScrollWheel>) as well as 

Installation
============

`git clone git@github.com:jacko-png/nvim-configs`
`cp -ir nvim-configs/nvim ~/.config/nvim`

Then, interactively solve any conflicts.


Development
===========
Currently, there are two branches: macos and linux. They will be merged when I have time by pulling macos into a tempdir then cross-referencing the configs that I want and making everything nice and compartmentalised.

The scrolling feature should be refactored so that it is called with .setup(min, max) and copied into a separate Git repository.

Branches
========
There should be a branch called ‘jacko-png’. It contains commands that you wouldn't want. At the moment the only non-portable functions are the ones that create the Google Drive and iCloud Drive shortcuts.

Platform-specific
=================

Some functions or behaviour might be platform-specfic. For example, most Linux terminal emulators handle Catppuccin Latte well, but the default on MacOS and Windows doesn't. Thus, vim.uv.uname() should be used to set up logic for a local boolean which is then used by an if statement.
