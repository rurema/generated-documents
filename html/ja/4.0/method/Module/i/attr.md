# Module#attr

### def attr(*name) -> [Symbol]
### def attr(name, true) -> [Symbol]
### def attr(name, false) -> [Symbol]

インスタンス変数読み取りのためのインスタンスメソッド name を定義します。

```ruby title="例"
class User
  p attr :name # => [:name]
  # 複数の名前を渡すこともできる
  p attr :id, :age # => [:id, :age]
end
```

このメソッドで定義されるアクセスメソッドの定義は次の通りです。

```ruby title="例"
def name
  @name
end
```

第 2 引数 が true で指定された場合には、属性の書き込み用メソッド name= も同時に定義されます。
その定義は次の通りです。

```ruby title="例"
def name=(val)
  @name = val
end
```

第 2 引数 に true か false を指定する方法は非推奨です。

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) で指定します。
- **return** -- 定義されたメソッド名を [Symbol](../../../class/Symbol.md) の配列で返します。
