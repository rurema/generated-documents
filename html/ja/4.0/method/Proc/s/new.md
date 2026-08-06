# Proc.new

### def Proc.new { ... } -> Proc

ブロックをコンテキストとともにオブジェクト化して返します。

- **raise** `ArgumentError` -- ブロックを省略した呼び出しを行ったときに発生します。

```ruby
pr = Proc.new {|arg| p arg }
pr.call(1) # => 1
```

```ruby
Proc.new # => -e:1:in 'new': tried to create Proc object without a block (ArgumentError)
```

Proc.new は、Proc#initialize が定義されていればオブジェクトの初期化のためにこれを呼び出します。このことを除けば、[Kernel?.proc](../../../method/Kernel/m/proc.md) と同じです。
