# library rubygems/commands/rdoc_command

RDoc と ri のライブラリを生成するためのライブラリです。

```text
Usage: gem rdoc [args] [options]
  Options:
        --all                        インストールされている全ての Gem パッケージの
                                     RDoc/RI ドキュメントを生成します。
        --[no-]rdoc                  RDoc を含めます
        --[no-]ri                    RI を含めます
    -v, --version VERSION            指定したバージョンのドキュメントを生成します
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
  GEMNAME       ドキュメントを生成する Gem パッケージを指定します。省略すると全ての
                Gem パッケージのドキュメントを生成します。
Summary:
  RDoc/RI ドキュメントを生成します
Defaults:
  --version '>= 0' --rdoc --ri
```
