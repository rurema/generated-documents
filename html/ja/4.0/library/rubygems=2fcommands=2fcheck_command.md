# library rubygems/commands/check_command

インストールされている Gem パッケージを検証するためのライブラリです。

```console
Usage: gem check [options]
  Options:
        --verify FILE                内部のチェックサムにより Gem パッケージを検証します
    -a, --alien                      管理されていないパッケージを報告します
    -t, --test                       Gem パッケージのユニットテストを実行します
    -v, --version VERSION            特定のバージョンのテストを実行します
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

```console
Summary:
  インストールされている Gem パッケージをチェックします
```
