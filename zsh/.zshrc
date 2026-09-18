export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Added by Antigravity
export PATH="/Users/roshaniruku/.antigravity/antigravity/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"

# TeX Live (BasicTeX)
export PATH="/Library/TeX/texbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/roshaniruku/code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/roshaniruku/code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/roshaniruku/code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/roshaniruku/code/google-cloud-sdk/completion.zsh.inc'; fi

# Added by Antigravity IDE
export PATH="/Users/roshaniruku/.antigravity-ide/antigravity-ide/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"


# autoload -Uz compinit
# compinit

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
