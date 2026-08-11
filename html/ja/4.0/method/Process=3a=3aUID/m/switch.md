# Process::UID?.switch

### module_function def switch          -> Integer
### module_function def switch { .... } -> object

実効ユーザ ID を一時的に変更するために使います。

実効ユーザ ID を実ユーザ ID に変更します。実効ユーザ ID と実ユーザ ID が等しい場合には、実効ユーザ ID を保存ユーザ ID に変更します。
変更前の実効ユーザ ID を返します。

ブロックが指定された場合、実効ユーザ ID を実ユーザ ID へ変更しブロックを実行します。ブロック終了時に実効ユーザ ID を元の値に戻します。ブロックの実行結果を返します。

なお、保存ユーザ ID を持たない環境でこのメソッドを実行すると実ユーザ ID が変化します。

- **raise** `Errno::EPERM` -- 各ユーザ ID がこのメソッドを実行するのに適切な状態でない場合、つまり、実ユーザ ID・実効ユーザ ID・保存ユーザ ID が全て同じ場合に発生します。ブロック付きの場合は、なんらかの原因で元の権限に復帰できないにも発生します。ブロック内でユーザ ID が変更されたなどの理由が挙げられます。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

```ruby
include Process
# (r, e, s) == (500, 505, 505)
p [uid, euid]           # => [500, 505]
Process::UID.switch do
  p [uid, euid]         # => [500, 500]
end
p [uid, euid]           # => [500, 505]
```
