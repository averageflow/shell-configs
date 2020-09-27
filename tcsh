







alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF
alias nano 	vi
alias php	/Applications/MAMP/bin/php/php7.4.2/bin/php
alias composer	/Applications/MAMP/bin/php/php7.4.2/bin/php /Applications/MAMP/bin/php/php7.4.2/bin/composer.phar 


# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv	BLOCKSIZE	K
# A righteous umask
# umask 22

setenv	EDITOR	vi
setenv	PAGER	less
setenv GOPATH /Users/joe/development/SDKs/go

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = ">#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif


# Set PATH variable

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin /Users/joe/development/SDKs/go1.15.2/bin /Applications/MAMP/bin/php/php7.4.2/bin)
