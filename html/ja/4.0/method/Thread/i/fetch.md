# Thread#fetch

### def fetch(name, default = nil) {|name| ... } -> object

name に関連づけられたスレッドに固有のデータを返します。
name に対応するスレッド固有データがない時には、引数 default が与えられていればその値を、ブロックが与えられていればそのブロックを評価した値を返します。

- **param** `name` -- スレッド固有データのキーを文字列か [Symbol](../../../class/Symbol.md) で指定します。
- **param** `default` -- name に対応するスレッド固有データがない時の返り値を指定します。
- **raise** `KeyError` -- 引数defaultもブロックも与えられてない時、
                name に対応するスレッド固有データがないと発生します。

```ruby title="例"
th = Thread.new { Thread.current[:name] = 'A' }
th.join
p th.fetch(:name) # => "A"
p th.fetch(:fetch, 'B') # => "B"
p th.fetch('name')  {|name| "Thread" + name}  # => "A"
p th.fetch('fetch') {|name| "Thread" + name}  # => "Threadfetch"
```

- **SEE** [Thread#\[\]](../../../method/Thread/i/=5b=5d.md)
