# IO#autoclose?

### def autoclose? -> bool

auto-close フラグを返します。

```ruby title="例"
IO.open(IO.sysopen("testfile")) do |io|
  p io.autoclose?       # => true
  io.autoclose = false
  p io.autoclose?       # => false
end
```

- **SEE** [IO#autoclose=](../../../method/IO/i/autoclose=3d.md)
