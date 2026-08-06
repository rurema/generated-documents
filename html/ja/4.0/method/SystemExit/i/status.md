# SystemExit#status

### def status -> Integer

例外オブジェクトに保存された終了ステータスを返します。

終了ステータスは [Kernel?.exit](../../../method/Kernel/m/exit.md) や [SystemExit.new](../../../method/SystemExit/s/new.md) などで設定されます。

```ruby title="例"
begin
  exit 1
rescue SystemExit => err
  p err.status   # => 1
end

begin
  raise SystemExit.new(1, "dummy exit")
rescue SystemExit => err
  p err.status   # => 1
end
```
