# library rubygems/commands/outdated_command

更新が必要な Gem パッケージの一覧を出力するためのライブラリです。

```text
Usage: gem outdated [options]
  Options:
        --platform PLATFORM          指定されたプラットフォームに関する情報を表示します
```

```text
Local/Remote Options:
  -l, --local                      操作をローカルに限定します
  -r, --remote                     操作をリモートに限定します
  -b, --both                       ローカルとリモートの両方の操作を許可します
  -B, --bulk-threshold COUNT       Threshold for switching to bulk
                                   synchronization (default 1000)
      --source URL                 Gem パッケージのリモートリポジトリの URL を指定します
      --[no-]http-proxy [URL]      リモートの操作に HTTP プロクシを使用します
  -u, --[no-]update-sources        ローカルソースキャッシュを更新します
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
Summary:
  更新が必要な Gem パッケージを全て表示します。
```
