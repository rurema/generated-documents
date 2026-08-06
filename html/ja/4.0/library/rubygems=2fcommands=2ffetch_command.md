# library rubygems/commands/fetch_command

Gem パッケージをダウンロードしてカレントディレクトリに保存するためのライブラリです。

```text
Usage: gem fetch GEMNAME [GEMNAME ...] [options]
  Options:
    -v, --version VERSION            指定されたバージョンの Gem を取得します
        --platform PLATFORM          指定されたプラットフォームの Gem を取得します
  Local/Remote Options:
    -B, --bulk-threshold COUNT       Threshold for switching to bulk
                                     synchronization (default 1000)
    -p, --[no-]http-proxy [URL]      リモートの操作に HTTP プロクシを使用します
        --source URL                 Gem パッケージのリモートリポジトリの URL を指定します
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
  GEMNAME       ダウンロードする Gem パッケージの名前を指定します
Summary:
  Gem パッケージをダウンロードしてカレントディレクトリに保存します
Defaults:
  --version '>= 0'
```
