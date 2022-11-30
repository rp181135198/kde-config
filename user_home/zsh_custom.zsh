# Set defaults
BROWSER=/opt/google/chrome/chrome

# My custom zsh-configuration
alias e="clear && exit"
alias ex="clear && exit"
alias q="clear && exit"
alias c="clear"
alias rlsql="rlwrap sqlplus / as sysdba"
alias jc="javac"
alias j="java"
alias k="konsole"
alias d="dict"
alias h="htop"
alias n="neofetch"
alias w="which"
alias p="ping www.google.com"
alias dh="dict -d fd-eng-hin"
alias ss="cmatrix -s"
alias yt="youtube-dl"
alias ytdl="youtube-dl -f"
alias ytdlmp3="youtube-dl --extract-audio --audio-format mp3"
alias mp3="youtube-dl --extract-audio --audio-format mp3"
alias pkgs="pacman -Ss"
alias ypkgs="yay -Ss"
alias pkgi="sudo pacman -S --needed"
alias ypkgi="yay -S"
alias pkgr="sudo pacman -Rs"
alias ypkgr="yay -Rs"
alias pkcc="sudo pacman -Sc" # Clear pacman cache
alias update="sudo pacman -Syu --needed"

# Power Options
alias sr="reboot"
alias ss="poweroff"

# Utils
#alias brightness="xrandr --output <device-name> --brightness" #<value between 0.1 - 1.1>
alias scroll="imwheel -b \"45\"" # Improve mouse scroll using imwheel, write .imwheel script file at $HOME location

# Other helper alias
alias removeTitleBar="kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true && qdbus org.kde.KWin /KWin reconfigure"
alias getWindowClassName="xprop WM_CLASS | grep -o '\"[^\"]*\"' | head -n 1"
alias sysinfo="inxi -F"
alias ram="sudo dmidecode -t 17"
