# alias added for directory stuff by RTH 9/10/2007 and updated thereafter
alias cdr="cd ~/Code/Ruby"
alias cdra="cd ~/Code/Ruby/apps"

# Path updated 9/8/2014 by RTH to support Homebrew after re-installing Mavericks
# export PATH="/usr/local/bin:$PATH"

# Show git branch within prompt, per Michael Hartl on 7/5/2011. Use multi-line prompt per Bryan Liles at WCR2012
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\n\[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

# For Jekyll
alias js1="bundle exec jekyll serve -w --port 4001" # This alias and below are for Jekyll 3.
alias js2="bundle exec jekyll serve -w --port 4002"
alias js3="bundle exec jekyll serve -w --port 4003"
alias js4="bundle exec jekyll serve -w --port 4004"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
