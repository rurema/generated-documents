# library rubygems/commands/unpack_command

指定された Gem パッケージをカレントディレクトリに展開するためのライブラリです。

```text
Usage: gem unpack GEMNAME [options]
  Options:
        --target                     展開先のディレクトリを指定します
    -v, --version VERSION            展開する Gem パッケージのバージョンを指定します
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
  GEMNAME       展開する Gem パッケージ名を指定します
Summary:
  Gem パッケージをカレントディレクトリに展開します
Defaults:
  --version '>= 0'
```
