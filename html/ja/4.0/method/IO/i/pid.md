# IO#pid

### def pid    -> Integer | nil

自身が [IO.popen](../../../method/IO/s/popen.md) で作られたIOポートなら、子プロセスのプロセス ID を返します。それ以外は nil を返します。

- **raise** `IOError` -- 既に close されている場合に発生します。

```ruby title="例"
IO.popen("-") do |pipe|
  if pipe
    $stderr.puts "In parent, child pid is #{pipe.pid}" # => In parent, child pid is 16013
  else
    $stderr.puts "In child, pid is #{$$}"              # => In child, pid is 16013
  end
end
```
