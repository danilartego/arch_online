## Arch WSL Online

Набор скриптов для донастроки wsl для Arch Linux.
- обновление ключей pacman `key_update.sh`
- добавление пользователя `add_user.sh`
- установка пакетов `aur_inst.sh`

Порядок испрользования  
1. `key_update.sh` запускаем сразу после установки Arch Linux
2. `add_user.sh` запускаем после `key_update.sh`
3. выходим из Arch и запускаем в проводнике `compac_vhdx.cmd`
4. запускаем образ wsl и устанавливаем пакеты `aur_inst.sh`

#### Вариан устновки образа 1
Загрузка образа:

```sh
https://github.com/yuk7/ArchWSL/releases/tag/24.4.28.0
https://github.com/yuk7/ArchWSL/releases/download/24.4.28.0/Arch.zip
```

#### Вариан устновки образа 2 (через `scoop`)

```sh
# Ставим Scoop.sh через powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Ставим библиотеки
scoop bucket add extras
# Ставим ArchWsl
scoop install archwsl
```

