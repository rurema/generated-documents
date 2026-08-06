# LoadError#path

### def path -> String | nil

[Kernel?.require](../../../method/Kernel/m/require.md)、[Kernel?.require_relative](../../../method/Kernel/m/require_relative.md)、[Kernel?.load](../../../method/Kernel/m/load.md) に失敗したパスを返します。

```ruby
begin
  require 'this/file/does/not/exist'
rescue LoadError => e
  p e.path # => 'this/file/does/not/exist'
end
```

[Kernel?.eval](../../../method/Kernel/m/eval.md) に与えた文字列中での [Kernel?.require_relative](../../../method/Kernel/m/require_relative.md) は、読み込み元のファイルが存在しないため、読み込み先のパスが定まらず、`LoadError` が発生し、`LoadError#path` は `nil` を返します。

```ruby title="LoadError#path が nil になる例"
begin
  eval "require_relative 'foo'"
rescue LoadError => e
  p e.path    # => nil
  p e.message # => "cannot infer basepath"
end
```
