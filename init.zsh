# -*- mode: sh; eval: (sh-set-shell "zsh") -*-
#
# Sets modular / mojo environment
#
# Authors:
#   David Crook <idcrook@users.noreply.github.com>
#
# FIXME: check whether MODULAR_HOME is already set
if [[ -d "$HOME/.modular" ]]; then
    export MODULAR_HOME="$HOME/.modular"
    #export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
    path+="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin"
else
    #echo 'Cannot find MODULAR_HOME in default location. See https://docs.modular.com/mojo/manual/get-started/ '
    return 1
fi

# Return if requirements are not found.
if (( ! ${+commands[mojo]} )); then
    return 1
fi
