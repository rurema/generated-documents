# Module#attr_accessor

### def attr_accessor(*name) -> [Symbol]

インスタンス変数 name に対する読み取りメソッドと書き込みメソッドの両方を定義します。

```ruby title="例"
class User
  p attr_accessor :name # => [:name, :name=]
  # 複数の名前を渡すこともできる
  p attr_accessor :id, :age # => [:id, :id=, :age, :age=]
end
```

このメソッドで定義されるメソッドの定義は以下の通りです。

```ruby title="例"
def name
  @name
end
def name=(val)
  @name = val
end
```

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を 1 つ以上指定します。
- **return** -- 定義されたメソッド名を [Symbol](../../../class/Symbol.md) の配列で返します。
