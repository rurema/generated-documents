# Module.new

### def Module.new -> Module
### def Module.new {|mod| ... } -> Module

名前の付いていないモジュールを新しく生成して返します。

ブロックが与えられると生成したモジュールをブロックに渡し、モジュールのコンテキストでブロックを実行します。

```ruby title="例"
mod = Module.new
mod.module_eval {|m|
  # ...
}
mod
```

と同じです。
ブロックの実行は Module#initialize が行います。

ブロックを与えた場合も生成したモジュールを返します。

このメソッドで生成された直後のモジュールは無名で、最初にいずれかの定数に代入された時点で名前が確定します
([Module#name](../../../method/Module/i/name.md) を参照)。

```ruby title="例"
m = Module.new
p m               # => #<Module 0lx40198a54>
p m.name          # => nil   # まだ名前は未定
Utils = m
p m.name          # => "Utils"   # 最初に代入された定数名で確定する
Helpers = m
p m.name          # => "Utils"   # 一度確定した名前は変わらない
```
