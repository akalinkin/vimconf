# vimconf
My VIM config
Keep your config ion github and use it on any workstation/laptop/server/etc.

## Using config

Clone your config to some place on your device

```bash
git clone git@github.com:akalinkin/vimconf.git
```

Create symlink to your local config folder
(use absolute path or vim will not apply your config)

```bash
ln -sf /absolute/path/to/your/git/repo/.vimrc ~/.vimrc
```

That's it! 
Start vim

```bash
vim
```

### Install bundles

```
:PluginInstall
```
### Update bundles

```
:PluginUpdate
```

## Links

For awesome plugins go to the
[VimAwesome - AWESOME VIM PLUGINS from ACROSS THE UNIVERSE](http://vimawesome.com/)
