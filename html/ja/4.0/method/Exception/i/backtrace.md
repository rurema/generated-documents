# Exception#backtrace

### def backtrace    -> [String]

バックトレース情報を返します。

デフォルトでは

  - "#{sourcefile}:#{sourceline}:in '#{method}'"
    (メソッド内の場合)
  - "#{sourcefile}:#{sourceline}"
    (トップレベルの場合)

という形式の [String](../../../class/String.md) の配列です。

```ruby title="例"
def methd
  raise
end

begin
  methd
rescue => e
  p e.backtrace
end

#=> ["filename.rb:2:in 'Object#methd'", "filename.rb:6"]
```

- **SEE** [Exception#backtrace_locations](../../../method/Exception/i/backtrace_locations.md)
