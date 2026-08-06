# library rubygems/commands/pristine_command

インストールされている Gem パッケージを初期状態にするためのライブラリです。

```text
Usage: gem pristine [args] [options]
  Options:
        --all                        インストールされている全ての Gem パッケージを
                                     初期状態に戻します
    -v, --version VERSION            指定したバージョンの Gem パッケージを
                                     初期状態に戻します
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
  GEMNAME       gem to restore to pristine condition (unless --all)
Summary:
  Restores installed gems to pristine condition from files located in the gem
  cache
Description:
  The pristine command compares the installed gems with the contents of the
  cached gem and restores any files that don't match the cached gem's copy.
      
  If you have made modifications to your installed gems, the pristine command
  will revert them.  After all the gem's files have been checked all bin stubs
  for the gem are regenerated.
      
  If the cached gem cannot be found, you will need to use `gem install` to
  revert the gem.
Defaults:
  --all
```
