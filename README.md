<div align="center">
  <img src="https://user-images.githubusercontent.com/98277140/227460693-99fe290b-31cf-4ae5-8226-309af209b1d9.png" width="400px">
</div>

<h4 align="center">
  <a href="https://installation">Install</a>
  ·
  <a href="https://configuration">Configure</a>
  ·
  <a href="https://github.io">Docs</a>
</h4>

<div align="center"><p>
    <a href="https://github.com/kimwlsgh33/SevenOS/releases/latest">
      <img alt="Latest release" src="https://img.shields.io/github/v/release/kimwlsgh33/SevenOS?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&include_prerelease&sort=semver" />
    </a>
    <a href="https://github.com/kimwlsgh33/SevenOS/pulse">
      <img alt="Last commit" src="https://img.shields.io/github/last-commit/kimwlsgh33/SevenOS?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
    <a href="https://github.com/kimwlsgh33/SevenOS">
      <img alt="License" src="https://img.shields.io/github/license/kimwlsgh33/SevenOS?color=%23EE999F&logo=starship&style=for-the-badge" />
    </a>
    <a href="https://github.com/kimwlsgh33/SevenOS/stargazers">
      <img alt="Stars" src="https://img.shields.io/github/stars/kimwlsgh33/SevenOS?style=for-the-badge&logo=starship&color=c69ff5&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/kimwlsgh33/SevenOS/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/kimwlsgh33/SevenOS?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/kimwlsgh33/SevenOS">
      <img alt="Repo Size" src="https://img.shields.io/github/repo-size/kimwlsgh33/SevenOS?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://twitter.com/intent/follow?screen_name=isiba1dev">
      <img alt="follow on Twitter" src="https://img.shields.io/twitter/follow/isiba1dev?style=for-the-badge&logo=twitter&color=8aadf3&logoColor=D9E0EE&labelColor=302D41" />
    </a>
</div>

## Latest News

<b> Init Project [AUTHOR](https://github.com/kimwlsgh33) </b>

- [2023/02] [write boot asm](https://logosevens.com)
- [2023/02] [write boot asm](https://logosevens.com)
- [2023/02] [write boot asm](https://logosevens.com)

---

## ✨ Features

- 🔥 Transform your Neovim into a full-fledged IDE
- 💤 Easily customize and extend your config with
  [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🚀 Blazingly fast
- 🧹 Sane default settings for options, autocmds, and keymaps
- 📦 Comes with a wealth of plugins pre-configured and ready to use

## ⚡️ Requirements

- Neovim >= **0.8.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**

## 🚀 Getting Started

You can find a starter template for **LazyVim**
[here](https://github.com/LazyVim/starter)

<details><summary>Try it with Docker</summary>

```sh
docker run -w /root -it --rm alpine:edge sh -uelic '
  apk add git lazygit neovim ripgrep alpine-sdk --update
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cd ~/.config/nvim
  nvim
'
```

---

## 📂 File Structure

The files under config will be automatically loaded at the appropriate time, so
you don't need to require those files manually. **LazyVim** comes with a set of
default config files that will be loaded **_before_** your own. See
[here](https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/config)

You can add your custom plugin specs under `lua/plugins/`. All files there will
be automatically loaded by [lazy.nvim](https://github.com/folke/lazy.nvim)

<pre>
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
</pre>

## ⚙️ Configuration

---

Refer to the [docs](https://lazyvim.github.io)

## #8CA1AF Documentation

## 1. boot system

## 2. Latest News

## 
