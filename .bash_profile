# alias added for directory stuff by RTH 9/10/2007 and updated thereafter
alias cdr="cd ~/Code/Ruby"
alias cdra="cd ~/Code/Ruby/apps"

# For Jekyll
alias js1="bundle exec jekyll serve -w --port 4001" # This alias and below are for Jekyll 3.
alias js2="bundle exec jekyll serve -w --port 4002"
alias js3="bundle exec jekyll serve -w --port 4003"
alias js4="bundle exec jekyll serve -w --port 4004"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
