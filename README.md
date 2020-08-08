# Dot files

## [ZSH](http://zsh.org/)
Awesome customizable shell
* Arch: `pacman -S zsh zsh-completions`
* Ubuntu: `apt install zsh`

## [Oh My Zsh](https://ohmyz.sh/)
Oh My Zsh is a framework for managing your zsh configuration.
```bash
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
```

###  Syntax highliting
Basically it make the command green if typed right, red if doesn’t, and underline existent folders/files.
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Autosuggestions
Autocomplete suggestions based in your history
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Fuzzy finder
Use Ctrl+T to search for files or search for commands in your history too using Ctrl+R
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

### [ColorLS](https://github.com/athityakumar/colorls)
A Ruby script that colorizes the ls output with color and icons.
```bash
gem install colorls
```
To add some short command (say, lc) with some flag options (say, -l, -A, --sd) by default, add this to your shell configuration file (~/.bashrc, ~/.zshrc, etc.) :
```
alias lc='colorls -lA --sd'
```

## [PowerLevel10k](https://github.com/romkatv/powerlevel10k)
Powerlevel10k is a theme for Zsh. It emphasizes speed, flexibility and out-of-the-box experience.
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Fonts
* [Nerd Fonts](https://www.nerdfonts.com/)
* [PowerLevel10k](https://github.com/romkatv/powerlevel10k#fonts)
  - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
  - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
  - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
  - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

### [Color schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)
