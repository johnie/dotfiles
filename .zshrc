# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="refined"

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Load zsh plugins
plugins=(git composer sublime rvm ruby npm battery osx meteor golang emoji docker zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/sbin:$PATH

export GOPATH="$HOME/dev/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$HOME/.node/bin:$PATH"

export PATH=$PATH:$HOME/bin

unalias gg

export HOMEBREW_GITHUB_API_TOKEN=cb0df347dfbcd38864386abc4888db76c69523c0
export PATH="/usr/local/opt/pcsc-lite/bin:$PATH"
export PATH="/usr/local/opt/pcsc-lite/sbin:$PATH"
export PATH=/usr/local/php5/bin:$PATH

unalias grv

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;
