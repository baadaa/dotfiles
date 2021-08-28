# NOTE: 
#
# - Default settings are largely left untouched 
# - Only added a few plugins and personal aliases (at the bottom o)

# Path to your oh-my-zsh installation.
export ZSH="/Users/b/.oh-my-zsh"

# Color theme
ZSH_THEME="cobalt2"

# Plugins
plugins=(git node npm z)

source $ZSH/oh-my-zsh.sh

# include Z, yo
. ~/z.sh

# Personal aliases

# Source .zshrc
alias zs="source ~/.zshrc"

# Allow ommitted space after CD command
alias cd..='cd ../'

# Add more details when listing files and directories
alias ll='ls -FGlAhp'

# zip recursively from the current folder without DS_Store files
zz() {
  zip -r "$@" . -x '*.DS_Store*'
}

# This one is modified from Wes Bos
# Uses tree - install first:
# brew install tree
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst -L ${1:-3} -aC $2 | less
}

# Show directory listing immediately after CD
cd() { builtin cd "$@"; ll; }

# Move files to trash rather than immediately deleting them
trash () { command mv "$@" ~/.Trash ; }

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

source /Users/b/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
