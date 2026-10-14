# Ractor.shareable_lambda

### def Ractor.shareable_lambda(self: nil) { ... } -> Proc

[Ractor.shareable_proc](../../../method/Ractor/s/shareable_proc.md) と同じですが、lambda である [Proc](../../../class/Proc.md) を返します。

- **param** `self` -- 作成する [Proc](../../../class/Proc.md) の `self` にするオブジェクトを指定します。shareable でなければなりません。デフォルトは nil です。
- **raise** `Ractor::IsolationError` -- `self` が shareable でない場合や、ブロックが shareable でないオブジェクトを参照している場合に発生します。

```ruby
l = Ractor.shareable_lambda { 42 }
p Ractor.shareable?(l) # => true
p l.lambda?            # => true
```

- **SEE** [Ractor.shareable_proc](../../../method/Ractor/s/shareable_proc.md)
