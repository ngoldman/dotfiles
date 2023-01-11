# check if branch is clean
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != *"nothing to commit"* ]] && echo "*"
}

# print branch name
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty)) /"
}

# download kung fu into your brain
function matrix {
  echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

# https://twitter.com/peterc/status/274714598643470337
function maze {
  ruby -e 'print ["\u2571","\u2572"].sample while sleep 0.001'
}

function argle { clear; ruby -e 'arr = (9000..9900).to_a; print "" << arr.sample.to_i.to_s(16).to_i(16) while sleep 0.05'; };

# don't do this, might make things crash if you do one after the other right away
# function cycle_network_setup {
#   networksetup -setairportpower en0 off
#   networksetup -setairportpower en0 on
# }
