# dotfiles
These are my dotfiles with very basic config changes for things like rails 3, git,
homebrew etc.  It also creates project aliases for easier directory navigation. 

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