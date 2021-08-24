# configfiles
My RC and config files

### Config files for:
* `vim`
* `tmux`
* `bash_aliases`

### Dependencies:
* `vim 8.2` needs to be installed

### Installation
1. clone the repo: `git clone ...`
2. chmod +x all the scripts: `chmod +x *.sh`
3. install: `install.sh branch_name`
	- A branch will be created for the particular system
	- Pass the name of the branch (name of the system) as the first argument to
	  install.sh
	- If no name is supplied, branch will not be created

### Workflow
After installing,
* Make changes to a file, say `.vimrc`, on your branch for the system
* commit the changes
* If master is to be updated with this new file, run `./update_master.sh .vimrc`

Further, say master is updated with a file, say `.vimrc` and you want the changes to be
updated on your system run `./pull_from_master.sh .vimrc`

### Vim Configs
The plugins that need to be installed are:
* `vim-gitgutter`: https://github.com/airblade/vim-gitgutter
* `gruvbox` : https://github.com/morhetz/gruvbox
* `yats` : https://github.com/HerringtonDarkholme/yats.vim
* `coc` : https://github.com/neoclide/coc.nvim
