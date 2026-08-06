# NameError#to_s

### def to_s -> String

例外オブジェクトを文字列に変換して返します。

```ruby title="例"
begin
  foobar
rescue NameError => err
p err       # => #<NameError: undefined local variable or method 'foobar' for main>
p err.to_s  # => "undefined local variable or method 'foobar' for main"
end
```
