nvim-configs
============
My Neovim configs to share a) with you and b) between my computers.

It is very bare-bones and focusses on integrating the mouse (<S-ScrollWheel> and <C-ScrollWheel>), keeping default keybinds (mostly) and keeping related configs in the same file with unrelated ones in different files.

Notable changes
===============

• Unbind <s> so that it can be used for sandwich-nvim instead

Installation
============
An example installation procedure is as follows:

```
$ cd ~/proj
$ git clone git@github.com:jacko-png/nvim-configs
$ cd nvim-configs/
$ A=~/.config/nvim
# interactively resolve conflicts
$ cp -ir lua/ $A/lua/
$ cat init.lua >> $A/init.lua
```
You could also set up an intermediary directory:
```
$ mkdir nvim-temp
$ cp -r ~/.config/nvim/ nvim-temp/
$ A=nvim-temp
```
Then run Neovim while specifying the config directory's init.lua:

```
$ nvim -u nvim-temp/init.lua
$ neovide -- -u nvim-temp/init.lua
```

This will load neovim without sourcing other configs (user/system-wide (?))

As you can see, the installation process can be very flexible. Generally, you want to avoid copying the .git/ and .gitignore files into your config directory which is one of the goals of the above steps.

Development
===========
Currently, there are two branches: macos and linux. They will be merged when I have time by cloning macos into a tempdir then cross-referencing the configs that I want and making everything nice and compartmentalised.

The scrolling feature should be refactored so that it is called with .setup(min, max) and copied into a separate Git repository.

Context menu?

Easily make markdown headings (command/keybind)

Branches
========
There should be a branch called ‘jacko-png’. It contains commands that you wouldn't want. At the moment the only non-portable functions are the ones that create the Google Drive and iCloud Drive shortcuts.

Platform-specific
=================

Some functions or behaviour might be platform-specfic. For example, most Linux terminal emulators handle Catppuccin Latte well, but the default on MacOS and Windows doesn't. Thus, vim.uv.uname() should be used to set up logic for a local boolean which is then used by an if statement to control the loading of Catppuccin.
