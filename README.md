# dotfiles

## Install environment (Arch linux)

```sh
# sh < <(curl -s https://raw.githubusercontent.com/dotslashme/dotfiles/master/install_software)
```
OR
```sh
# wget -O - https://raw.githubusercontent.com/dotslashme/dotfiles/master/install_software | sh
```

## Dependencies

There are loads of dependencies for this project, but the only one needed to actually run it is `stow`. Beyond that, the use of dependencies vary depending on which folders you install using `stow`.

## Full install

To setup your home folder, run:

```sh
stow -t "${HOME}" rofi sway vim zsh
```

To setup the root folder, run:

```sh
sudo stow -t / keyboard
```
