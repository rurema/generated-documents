# Gem::VersionOption#add_version_option

### def add_version_option(task = command, *wrap)

option parser に対して --version オプションを追加します。

- **param** `task` -- コマンド名を指定します。デフォルト値はインクルードされる側のクラスで指定されます。

- **param** `wrap` -- [Gem::Command#add_option](../../../method/Gem=3a=3aCommand/i/add_option.md) に渡すその他のオプションを指定します。
