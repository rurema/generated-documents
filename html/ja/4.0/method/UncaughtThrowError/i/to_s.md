# UncaughtThrowError#to_s

### def to_s -> String

self を tag を含む文字列表現にして返します。

```ruby title="例"
def do_complicated_things
  throw :uncaught_label
end

begin
  do_complicated_things
rescue UncaughtThrowError => ex
  p ex.to_s # => "uncaught throw :uncaught_label"
end
```
