# Struct#values_at

### def values_at(*members) -> [object]

引数で指定されたメンバの値の配列を返します。

- **param** `members` -- [Integer](../../../class/Integer.md) か [Range](../../../class/Range.md) でメンバのインデックスを指定します。

- **raise** `IndexError` -- member が整数で存在しないメンバを指定した場合に発生します。

```ruby title="例"
Foo = Struct.new(:foo, :bar, :baz)
obj = Foo.new('FOO', 'BAR', 'BAZ')
p obj.values_at(0, 1, 2)    # => ["FOO", "BAR", "BAZ"]
```

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。
