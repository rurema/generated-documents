# Exception#cause

### def cause -> Exception | nil

self の前の例外(self が rescue 節や ensure 節の中で発生した例外の場合、その前に発生していた元々の例外)を返します。存在しない場合は nil を返します。

```ruby title="例"
begin
  begin
    raise "inner"
  rescue
    raise "outer"
  end
rescue
  p $!       # => #<RuntimeError: outer>
  p $!.cause # => #<RuntimeError: inner>
end
```
