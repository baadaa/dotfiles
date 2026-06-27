# NOTE: 
#
# - Default settings are largely left untouched 
# - Only added a few plugins and personal aliases (at the bottom o)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

# Tailscale CLI -- TODO: uncomment after installing Tailscale 
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# Add more details when listing files and directories
# - I'm using gls` instead of `ls` to use `--group-directories-first` option on a Mac
# - Install `coreutils` first:: `brew install coreutils` 
# (see https://apple.stackexchange.com/questions/300615/group-directories-first-option-for-ls-command)
alias ll='gls -FGlAhp --group-directories-first --color'

# zip recursively from the current folder without DS_Store files
zz() {
  zip -r "$@" . -x '*.DS_Store*'
}

# Confetti -> Raycast required because it's using Raycast command
confetti() {
  open raycast://extensions/raycast/raycast/confetti
}

# yt-dlp template for downloading clips as MP3 audio
# requires yt-dlp and ffmpeg. run first:
# brew install ffmpeg
# brew install yt-dlp
yt() {
  yt-dlp "$@" --audio-format mp3 --audio-quality 0 --no-check-certificate --extract-audio -o "%(playlist_index|)s%(playlist_index& - |)s%(title)s.%(ext)s"
}

# Countdown timer
# https://github.com/antonmedv/countdown
# brew install countdown

# TUI Todo manager: ToDoDo
# https://github.com/bmarse/tododo
# brew install bmarse/tap/tododo

# wttr.in -- weather info CLI
# see https://github.com/chubin/wttr.in for more options
alias wttr="curl https://wttr.in/\?m"

# Midnight Commander
# brew install midnight-commander

# CMUS music player
# brew install cmus

# This one is modified from Wes Bos
# Uses tree - install first:
# brew install tree
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store|.cache' --dirsfirst -L ${1:-3} -aC $2 | less
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
    # NOTE: I had an issue with the cdf() script above, in which it kept erroring out.
    # If it happens again, try the following instead.
    #   ------------------------------------------------------
    #     cdf () {
    #         local currFolderPath
    #         currFolderPath=$(
    #             /usr/bin/osascript 2>/dev/null <<'EOT'
    #                 tell application "Finder"
    #                     try
    #                         set currFolder to (folder of the front window as alias)
    #                     on error
    #                         set currFolder to (path to desktop folder as alias)
    #                     end try
    #                     POSIX path of currFolder
    #                 end tell
    # EOT
    #         )

    #         if [[ -z "$currFolderPath" ]]; then
    #             echo "cdf: Finder access is not authorized."
    #             echo "Enable it in System Settings > Privacy & Security > Automation for your terminal app (Warp) to control Finder."
    #             return 1
    #         fi

    #         echo "cd to \"$currFolderPath\""
    #         cd "$currFolderPath"
    #     }


# Use zsh syntax highlighting: brew install the package first, then run the sourcing script
# brew install zsh-syntax-highlighting
# echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Install NVM first. Then use NVM to install Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
