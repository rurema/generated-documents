# Ractor.shareable_lambda

### def Ractor.shareable_lambda { ... } -> Proc

[Ractor.shareable_proc](../../../method/Ractor/s/shareable_proc.md) と同じですが、lambda である [Proc](../../../class/Proc.md) を返します。

```ruby
l = Ractor.shareable_lambda { 42 }
p Ractor.shareable?(l) # => true
p l.lambda?            # => true
```

- **SEE** [Ractor.shareable_proc](../../../method/Ractor/s/shareable_proc.md)
