prezto-mojo
===========

=================

Mojo module for prezto.

Aliases that @idcrook uses for mojo

Install
-------

To use, the module directory needs to be found in `pmodule-dirs`, so e.g. in `zpreztorc`:

```diff
 # Add additional directories to load prezto modules from
-# zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
+zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib
```

It could also be placed in `/contrib` or `/modules` which are already in default `pmodule-dirs`.

```shell
cd $HOME/.zprezto-contrib
git clone https://github.com/idcrook/prezto-mojo.git mojo
# or alternatively
git submodule add https://github.com/idcrook/prezto-mojo.git mojo
```

Configure
---------

The module itself (above cloned to be named `kubernetes`) needs to be explicitly loaded in `${ZDOTDIR:-$HOME}/.zpreztorc`

Modules are loaded via `zstyle ':prezto:load' pmodule`

```
  ...
       'utility' \
       'completion' \
       'mojo' \
  ...
```

In mine, I've loaded it after `completion` module.

Aliases
-------

-	`kbk` `kubectl` base
-	`kbn` with `kube-system` namespace

#### Subcommand aliases

Acknowledgments
---------------
