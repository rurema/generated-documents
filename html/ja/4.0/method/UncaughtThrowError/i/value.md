# UncaughtThrowError#value

### def value -> object

[Kernel?.throw](../../../method/Kernel/m/throw.md) に指定した value を返します。

```ruby title="例"
def do_complicated_things
  throw :uncaught_label, "uncaught_value"
end

begin
  do_complicated_things
rescue UncaughtThrowError => ex
  p ex.value # => "uncaught_value"
end
```
