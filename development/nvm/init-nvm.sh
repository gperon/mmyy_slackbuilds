if [ -z "${NVM_DIR:-}" ]; then
  NVM_DIR="$HOME/.nvm"
  [ -n "${XDG_CONFIG_HOME:-}" ] && NVM_DIR="$XDG_CONFIG_HOME/nvm"
fi
export NVM_DIR

# "nvm exec" and certain 3rd party scripts expect "nvm.sh" and "nvm-exec" to
# exist under $NVM_DIR
[ ! -e "$NVM_DIR" ] && mkdir -vp "$NVM_DIR"
[ ! -e "$NVM_DIR/nvm.sh" ] && ln -vs /usr/share/nvm/nvm.sh "$NVM_DIR/nvm.sh"
[ ! -e "$NVM_DIR/nvm-exec" ] && ln -vs /usr/share/nvm/nvm-exec "$NVM_DIR/nvm-exec"

. /usr/share/nvm/nvm.sh
. /usr/share/nvm/bash_completion
