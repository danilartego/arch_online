## Arch WSL Online

Настройка wsl для Arch Linux

#### Вариан 1
Загрузка образа:

```sh
https://github.com/yuk7/ArchWSL/releases/tag/24.4.28.0
https://github.com/yuk7/ArchWSL/releases/download/24.4.28.0/Arch.zip
```

#### Вариан 2

```sh
# Ставим Scoop.sh через powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Ставим библиотеки
scoop bucket add extras
# Ставим ArchWsl
scoop install archwsl
```

