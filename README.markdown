# dotfiles
These are my dotfiles with very basic config changes for things like rails 3, git,
homebrew etc.  It also creates project aliases for easier directory navigation. 

Just simply run `commands` for a simple list of commands and sub-commands. It does 
not list them all, your best bet is to go through the files themselves.

## install
- `git clone git://github.com/zenom/dotfiles.git`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.


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

- [Iain](https://github.com/iain/osx_settings)
- [holman](https://github.com/holman/)
- [ryanb](https://github.com/ryanb)