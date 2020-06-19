dotfiles
========

Usage
-----

Fork this repo and add / remove any files you don't want such as `railsrc` / `gemrc`
if you're not a Ruby developer. The `zshrc` file does some RBenv and Node loading
which is worth a look if you're not interested in either of those technologies.

Checkout the `aliases` file and add / remove any shell aliases you want / don't want.

The `bin` folder should contain any personal shell scripts you want to run,
for example I keep some BBC proxy scripts here and include the `~/.bin` in my $PATH.

Install
-------

Clone onto your machine:

    git clone git://github.com/YOUR_GITHUB_USERNAME/dotfiles.git

Install:

    cd dotfiles
    ./install.sh
    ./Brewfile
    ./setup.sh
    sudo chsh -s /bin/zsh

This will create symlinks for config files in your home directory.

You can safely run `./install.sh` multiple times to update.

Dotfiles based off https://github.com/thoughtbot/dotfiles
Prompt bases off https://github.com/sindresorhus/pure
