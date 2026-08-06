# class Gem::Commands::WhichCommand < Gem::Command

指定された Gem パッケージに含まれるライブラリのパスを見つけるためのクラスです。

```text
Usage: gem which FILE [...] [options]
  Options:
    -a, --[no-]all                   show all matching files
    -g, --[no-]gems-first            search gems before non-gems
```

```text
Common Options:
  -h, --help                       このコマンドのヘルプを表示します
  -V, --[no-]verbose               表示を詳細にします
  -q, --quiet                      静かに実行します
      --config-file FILE           指定された設定ファイルを使用します
      --backtrace                  バックトレースを表示します
      --debug                      Ruby 自体のデバッグオプションを有効にします
```

```text
Arguments:
  FILE          Gem パッケージ名を指定します
Summary:
  指定された Gem パッケージのライブラリのある場所を表示します
Defaults:
  --no-gems-first --no-all
```

## Instance Methods

- [find_paths](../method/Gem=3a=3aCommands=3a=3aWhichCommand/i/find_paths.md)
- [gem_paths](../method/Gem=3a=3aCommands=3a=3aWhichCommand/i/gem_paths.md)

## Constants

- [EXT](../method/Gem=3a=3aCommands=3a=3aWhichCommand/c/EXT.md)
