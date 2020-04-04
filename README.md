# dotfiles

## Install environment (Arch linux)

```
# sh < <(curl -s https://raw.githubusercontent.com/dotslashme/dotfiles/master/install_software)
```
OR
```
# wget -O - https://raw.githubusercontent.com/dotslashme/dotfiles/master/install_software | sh
```

## Dependencies

There are loads of dependencies for this project, but the only one needed to actually run it is `stow`. Beyond that, the use of dependencies vary depending on which folders you install using `stow`.

## Full install

For a full install, run: `stow -t "${HOME}" rofi sway vim zsh`
