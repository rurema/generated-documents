# Ractor.shareable_proc

### def Ractor.shareable_proc { ... } -> Proc

与えられたブロックから shareable な [Proc](../../../class/Proc.md) を作成して返します。

通常の [Proc](../../../class/Proc.md) は shareable ではないため、他の Ractor に渡せません。
このメソッドで作成した [Proc](../../../class/Proc.md) は shareable になるため、複数の Ractor から利用できます。

```ruby
pr = Ractor.shareable_proc { 42 }
p Ractor.shareable?(pr) # => true
p pr.lambda?            # => false

p Ractor.shareable?(proc { 42 }) # => false （通常の Proc は shareable ではない）

# 他の Ractor に渡して呼び出せる
p Ractor.new(pr) {|p| p.call }.value # => 42
```

- **SEE** [Ractor.shareable_lambda](../../../method/Ractor/s/shareable_lambda.md), [Ractor.make_shareable](../../../method/Ractor/s/make_shareable.md)
