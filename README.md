# Personal Neovim

## Requirement
### WSL
- Neovim in `WSL2` or `Linux` or `Mac` Distro
- must have `wget`, `gcc`, `libgcc`, `unzip`, `python3`, `jdk` for using this repository.

### Windows native (Winget)
Install chocolatey

```
winget install --accept-source-agreements chocolatey.chocolatey
```

Chocolately install necessary package
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```


## Installation
Backup `~/.config/nvim` into `~/.config/nvim.bak`
```sh
mv ~/.config/nvim{,.bak}
```

Install my Neovim template
```sh
git clone https://github.com/chonsawat/chonsawat.nvim.git ~/.config/nvim
```

Start Nvim (Done)
```
nvim
```

## References
- [https://github.com/unknownkoder/Java-FullStack-NeoVim-Configuration](https://github.com/unknownkoder/Java-FullStack-NeoVim-Configuration)

## Preview
![image](https://github.com/user-attachments/assets/7b3aab88-3a53-4c4b-8933-1a90ace51070)
![image](https://github.com/user-attachments/assets/deb9dcdb-5215-4890-bd28-d8cc5de26e7d)
