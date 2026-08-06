# Module#attr_writer

### def attr_writer(*name) -> [Symbol]

インスタンス変数 name への書き込みメソッド (name=) を定義します。

```ruby title="例"
class User
  p attr_writer :name # => [:name=]
  # 複数の名前を渡すこともできる
  p attr_writer :id, :age # => [:id=, :age=]
end
```

このメソッドで定義されるメソッドの定義は以下の通りです。

```ruby title="例"
def name=(val)
  @name = val
end
```

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を 1 つ以上指定します。
- **return** -- 定義されたメソッド名を [Symbol](../../../class/Symbol.md) の配列で返します。
