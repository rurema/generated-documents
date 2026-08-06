# Gem::Command#merge_options

### def merge_options(new_options) -> Hash

与えられたオプションとデフォルトのオプションをマージします。
しかし、新しいオプションに同一のキーがあってもデフォルトのオプションは変更されません。

- **param** `new_options` -- 新しいコマンドオプションをハッシュで指定します。
