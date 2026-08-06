# library rubygems/commands/install_command

Gem パッケージをローカルリポジトリにインストールするためのライブラリです。

```text
Usage: gem install GEMNAME [GEMNAME ...] [options] -- --build-flags [options]
  Options:
        --platform PLATFORM          指定されたプラットフォームの Gem パッケージをインストールします
    -v, --version VERSION            指定されたバージョンの Gem パッケージをインストールします
  Install/Update Options:
    -i, --install-dir DIR            Gem パッケージのインストー先を指定します
    -n, --bindir DIR                 Gem パッケージに含まれるバイナリファイルの配置先を指定します
    -d, --[no-]rdoc                  インストール時に RDoc を生成します
        --[no-]ri                    インストール時に RI ドキュメントを生成します
    -E, --[no-]env-shebang           インストールするスクリプトの shebang line を書き換えます(/usr/bin/env)
    -f, --[no-]force                 依存関係のチェックをバイパスして強制的にインストールします
    -t, --[no-]test                  インストール時にユニットテストを実行します
    -w, --[no-]wrappers              Use bin wrappers for executables
                                     DOSHISH なプラットフォーム上では無効です
    -P, --trust-policy POLICY        Specify gem trust policy
        --ignore-dependencies        依存している Gem パッケージをインストールしません
    -y, --include-dependencies       依存している Gem パッケージをインストールします
        --[no-]format-executable     Make installed executable names match ruby.
                                     If ruby is ruby18, foo_exec will be
                                     foo_exec18
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
Arguments:
  GEMNAME       インストールする Gem パッケージ名を指定します
Summary:
  Gem パッケージをローカルにインストールします
Defaults:
  --both --version '>= 0' --rdoc --ri --no-force
  --no-test --install-dir /usr/lib/ruby/gems/1.8
```
