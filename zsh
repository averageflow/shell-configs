### zshrc - Josep Jesus Bigorra Algaba ###


### Directory Navigation ###
# Change directory when path entered without `cd`
setopt AUTO_CD

# Case insensitive globbing
setopt NO_CASE_GLOB

# Advanced completion
autoload -Uz compinit && compinit


### History Command Options ###
# More info in the history command
setopt EXTENDED_HISTORY

# Share history across sessions
setopt SHARE_HISTORY

# Expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST

# Do not store duplications
setopt HIST_IGNORE_DUPS

# Ignore duplicates while searching
setopt HIST_FIND_NO_DUPS

# Remove blank lines from history
setopt HIST_REDUCE_BLANKS

# Double check before !!
setopt HIST_VERIFY


### Aliases ###
alias ll='ls -alh'


### Prompt Customizations ###
# %(?.✓.✗) if return code ? is 0 show ✓, else show ✗
# %? exit code of previous command
# %2~ current working dir, shortening home to ~, showin last 2 elements
# %# means # with root, % otherwise
# %B %b start/stop bold
# %F{} text color
# %f reset to default text color
# %(!.#.>) show # when root user, > otherwise 
# %n username
# %m hostname
#
PROMPT='%(?.%F{green}✓.%F{red}✗)%f %B%F{cyan}%n@%m%f%b %B%F{38}%2~%f%b %(!.#.>) '


### Git integration ###
# Load plugin
autoload -Uz vcs_info
# Setup Armin's Git function
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{38}%BBranch: %b%f'
zstyle ':vcs_info:*' enable git


### zsh-autosuggestions ###
if [[ -r ~/workspace/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
	source ~/workspace/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi


### zsh-syntax-highlighting !!LOAD ME LAST!!###
if [[ -r ~/workspace/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
	source ~/workspace/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Run on new shell
if [[ `which fortune` ]]; then
    echo ""
    fortune
    echo ""
fi

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"