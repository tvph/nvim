# My configurations for Neovim editor

Currently, I use `Neovim` on `macOS`, so this guide will work well on `macOS` only. I'll update for another platforms later...
This configuration supports (includes syntax highlighting and autocompletion) for these languages:
* `Python`
* `Javascript`
* `Rust`
* `C`
* `C++`
* `Go`
* `Html`
* `Css`

## Prequisition:
* `neovim`
* `python3.+`
* `nodejs` and `npm`

### Neovim
In order to have all the newest features, you should install the [Nightly version, the latest (>=0.5.0) here](https://github.com/neovim/neovim/releases/tag/nightly).

### Python providers
I've used `python3` as a default version on my mac. If you use another versions of `Python`.
Please edit the `g:python3_host_prog` variable to probably path to your `Python`.
If your machine doesn't have any versions of `Python`, you could install [follow this](https://www.python.org/).
After install `Python`, you must install `pynvim`
```
pip3 install pynvim
```

### Nodejs and npm
There're a lot of plugins that use external packages (like language server protocol,...) of Neovim. And we need to install [Nodejs and npm via download](https://nodejs.org/en/download/)
[or via package manager](https://nodejs.org/en/download/package-manager/).

`neovim` Nodejs client is also needed:
```
npm install -g neovim
```

## How to use it?
Run this command:
```
curl -sSL https://github.com/tranvietphuoc/nvim/blob/master/install.sh | sh
```
and then type to the terminal command:
```
nvim
```
to open the editor first, then run command:
```
:PackerInstall
```
to install all plugins of editor. `:q` to quit and open it again.

## Some images of demo.
![floatterm](./assets/floatterm.png)
![startify](./assets/startfiy.png)
![Nerdtree and tagba](./assets/nerdtree_and_tagbar.png)
