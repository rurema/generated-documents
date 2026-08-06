# Struct#each_pair

### def each_pair {|member, value| ... } -> self
### def each_pair -> Enumerator

構造体のメンバ名([Symbol](../../../class/Symbol.md))と値の組を引数にブロックを繰り返し実行します。

```ruby title="例"
Foo = Struct.new(:foo, :bar)
Foo.new('FOO', 'BAR').each_pair {|m, v| p [m,v]}
# => [:foo, "FOO"]
#    [:bar, "BAR"]
```

[注意] 本メソッドの記述は Struct の下位クラスのインスタンスに対して呼び出す事を想定しています。Struct.new は Struct の下位クラスを作成する点に注意してください。
