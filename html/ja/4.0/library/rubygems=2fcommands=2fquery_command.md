# library rubygems/commands/query_command

Gem パッケージの情報を検索するためのライブラリです。

Usage: gem query [options]

```text
Options:
  -i, --[no-]installed             Check for installed gem
  -v, --version VERSION            Specify version of gem to query
  -n, --name-matches REGEXP        与えられた正規表現にマッチする Gem パッケージを
                                   検索します
  -d, --[no-]details               Gem パッケージの詳細を表示します
      --[no-]versions              Gem パッケージ名のみ表示します
  -a, --all                        見つかった Gem パッケージの全てのバージョンを表示します
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
  Gem パッケージの情報を検索します
Defaults:
  --local --name-matches // --no-details --versions --no-installed
```
