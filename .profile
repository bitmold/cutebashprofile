. "$HOME/.cargo/env"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Setting PATH for Python 3.10
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

# GIT FUNCTIONS
git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export CLICOLOR=1

export LSCOLORS=exfxcxdxbxegedabagacad


emoji() {
   size=${#heart[@]}
   index=$((RANDOM % $size))
   echo ${heart[$index]}
}


PS1="\[\e[038;5;56m\]\u\[\e[m\]"    # username
PS1+=" "
PS1+="\[\e[0;95m\]\W\[\e[m\]"    
PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]"   # current branch

heart[0]="💕"
heart[1]="💘"
heart[2]="🧸"
heart[3]="🎃"
heart[4]="🎀"
heart[5]="🍩"
heart[6]="⭐"
heart[7]="💎"
heart[8]="🥰"
heart[9]="💌"
heart[10]="😘"
heart[11]="👻"
heart[12]="😇"
heart[13]="😍"
heart[14]="🌹"
heart[15]="🍄"
heart[16]="🍦"
heart[17]="🍰"
heart[18]="🧁"
heart[19]="🚂"
heart[20]="🚲"
heart[21]="🎁"
heart[22]="🧨"
heart[23]="🏴"
heart[24]="💫"
heart[25]="💣"

PS1+='$(emoji)'
PS1+=" "

export PS1;
