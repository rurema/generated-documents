# Gem?.discover_gems_on_require=

### module_function def discover_gems_on_require -> bool
### module_function def discover_gems_on_require=(flag)

組み込みの `require` を拡張して、要求されたパスがインストール済みの Gem に含まれていないか自動的に確認し、含まれていれば自動的に有効化して `$LOAD_PATH` に追加するかどうかを表します。

- **param** `flag` -- 自動確認・自動有効化を行うかどうかを真偽値で指定します。
- **return** -- 現在の設定です。

```ruby title="例"
p Gem.discover_gems_on_require # => true
```
