# ObjectSpace?.count_nodes

### module_function def count_nodes(result_hash = nil) -> Hash

ノードの種類ごとの数を格納したハッシュを返します。

- **param** `result_hash` -- 戻り値のためのハッシュを指定します。省略した場合は新しくハッシュを作成します。result_hash の内容は上書きされます。プローブ効果を避けるために使用します。

- **raise** `TypeError` -- result_hash にハッシュ以外を指定した時に発生します。

本メソッドは普通の Ruby プログラマ向けのメソッドではありません。パフォーマンスやメモリ管理に興味のある C Ruby の開発者向けのものです。

Ruby 2.5 以降、パーサのノードは GC の管理対象ではないため、本メソッドは常に空のハッシュを返します。Ruby 4.1 で削除されました。

```ruby title="例"
require 'objspace'

p ObjectSpace.count_nodes
# => {}
```

戻り値のハッシュは処理系に依存します。これは将来変更になるかもしれません。

本メソッドは C Ruby 以外では動作しません。
