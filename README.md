# 1. Install Oh My Zsh

https://github.com/ohmyzsh/ohmyzsh

# 2. Install zsh-appjust plugin

```bash
git clone https://github.com/appjusto/zsh-appjusto $ZSH/custom/plugins/zsh-appjusto
```

# 3. Configure plugin

Edit `~/.zshrc` to export base directory and include zsh-appjusto in plugins:

```bash
export APPJUSTO_DIR=PATH_TO_BASE_DIRECTORY
plugins=(... zsh-appjusto)
```
