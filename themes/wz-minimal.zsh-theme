## Grégoire `wz` Morpain
## 2012/12/13

# PROMPT
PROMPT="(%n%B@%b%m) %2~ %B%#%b "
RPROMPT="<%B%*%b"

# ALIAS(es)
alias omzreload=". ${HOME}/.zshrc"

# Function(s)
clean() {
  SEARCH='.'
  if [ ${1} ]
    then
    SEARCH=${1}
  fi

  find ${SEARCH} -type f \( -name "*~" -or -name ".*~" \
    -or -name "#*#" -or -name ".#*" \) -exec rm -fv {} \;
}
