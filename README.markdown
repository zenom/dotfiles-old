# dotfiles
These are my dotfiles with very basic config changes for things like rails 3, git,
homebrew etc.  It also creates project aliases for easier directory navigation. These
have only been tested on MacOSX, there are some things that are mac specific like 'mvim'
and 'mate' commands.  Most other stuff should work on regular unix distros with little
customization.

Just simply run `commands` for a simple list of commands and sub-commands. It does 
not list them all, your best bet is to go through the files themselves.

## install
- `git clone git://github.com/zenom/dotfiles.git .dotfiles`
- `cd ~/.dotfiles`
- `rake install`

## post install
- Create a `~/.projects` directory and add something like `PROJECT_PARENT_DIRS[0]="$HOME/src"`
- Copy the `~/.dotfiles/git/gitconfig.sample` to `~/.gitconfig` and modify to fit your details.

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `base/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## modify dotfiles
For easier use you can use the following commands to edit or get to your dotfiles dirs.

- `dotcd` will change to your .dotfiles directory.
- `dotmate` will open your .dotfiles directory in TextMate.

## commands listing
This may or may not be up to date, but gives you an idea as to what is here.

Some of the commands

    ==== general ====
    dotmate             = open .dotfiles folder in textmate
    dotmvim             = open .dotfiles folder in macvim
    dotcd               = cd to the .dotfiles directory
    home                = cd to ~/
    ssh<tab>            = will show all your hosts
    reload! / refresh   = reload your shell
    myip                = your internet ip
    ips                 = ips on this machine
    hosts               = edit hosts file with vi
    pubkey              = copy id_rsa.pub to clipboard
    battery             = check battery life

    ==== development ====
    projects            = list all your projects based on .projects file
    rails-help          = rails help
    git-help            = git help
    latest-chromium     = download latest chromium
    deaths              = kill rails servers

    ==== databases ====
    mstart/mstop        = Start / Stop MongoDB
    mystart/mystop      = Start / Stop MySQL
    redstart/redstop    = Start / Stop Redis

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.bash` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.


###rails
- `s` pings your system for any running Rails apps, and `deaths` will then
  kill all of them indiscriminately. `rs` starts up a new Rails server on the
  next available port- if 3000 is taken, it'll spin up your server on 3001. 
  You can also run `rails-help` for more commands.
  
  
## thanks

I am just getting into configuring my .dotfiles for a better system. Most of the
stuff in these files were pulled from the following people:

- [Iain Hecker (iain)](https://github.com/iain/)
- [Zach Holman (holman)](https://github.com/holman/)
- [Ryan Bates (ryanb)](https://github.com/ryanb)
- [Bryan Goines (bry4n)](https://github.com/bry4n)
- [Mislav Marohnić (mislav)](https://github.com/mislav)
- [John Nunemaker (jnunemaker)](https://github.com/jnunemaker)

Git / Rails commands from Bash-It.

- [bash-it](https://github.com/revans/bash-it)