# Ractor.shareable_proc

### def Ractor.shareable_proc(self: nil) { ... } -> Proc

与えられたブロックから shareable な [Proc](../../../class/Proc.md) を作成して返します。

通常の [Proc](../../../class/Proc.md) は shareable ではないため、他の Ractor に渡せません。
このメソッドで作成した [Proc](../../../class/Proc.md) は shareable になるため、複数の Ractor から利用できます。

作成される [Proc](../../../class/Proc.md) の `self` は、キーワード引数 `self` で指定したオブジェクトになります。
ブロックが外側のローカル変数を参照している場合、その値も shareable でなければなりません。

- **param** `self` -- 作成する [Proc](../../../class/Proc.md) の `self` にするオブジェクトを指定します。shareable でなければなりません。デフォルトは nil です。
- **raise** `Ractor::IsolationError` -- `self` が shareable でない場合や、ブロックが shareable でないオブジェクトを参照している場合に発生します。

```ruby
pr = Ractor.shareable_proc { 42 }
p Ractor.shareable?(pr) # => true
p pr.lambda?            # => false

p Ractor.shareable?(proc { 42 }) # => false （通常の Proc は shareable ではない）

# 他の Ractor に渡して呼び出せる
p Ractor.new(pr) {|p| p.call }.value # => 42
```

```ruby title="例: self を指定"
p Ractor.shareable_proc { self }.call               # => nil
p Ractor.shareable_proc(self: 42) { self + 1 }.call # => 43

x = 1
p Ractor.shareable_proc { x }.call # => 1

Ractor.shareable_proc(self: Object.new) { self } # ~> Ractor::IsolationError
```

- **SEE** [Ractor.shareable_lambda](../../../method/Ractor/s/shareable_lambda.md), [Ractor.make_shareable](../../../method/Ractor/s/make_shareable.md)
