# library rubygems/commands/cleanup_command

ローカルにインストールされている古い Gem を削除するライブラリです。

```console
Usage: gem cleanup [GEMNAME ...] [options]
  Options:
    -d, --dryrun
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
Arguments:
  GEMNAME       削除する Gem パッケージの名前を指定します
Summary:
  ローカルリポジトリにインストールされている古いバージョンの
  Gem パッケージを削除します
Defaults:
  --no-dryrun
```
