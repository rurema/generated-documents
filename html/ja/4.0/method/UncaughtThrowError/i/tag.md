# UncaughtThrowError#tag

### def tag -> object

[Kernel?.throw](../../../method/Kernel/m/throw.md) に指定した tag を返します。

```ruby title="例:"
def do_complicated_things
  throw :uncaught_label
end

begin
  do_complicated_things
rescue UncaughtThrowError => ex
  p ex.tag # => ":uncaught_label"
end
```
