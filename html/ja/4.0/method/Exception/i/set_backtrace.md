# Exception#set_backtrace

### def set_backtrace(errinfo)    -> nil | String | [String]

バックトレース情報に errinfo を設定し、設定されたバックトレース情報を返します。

- **param** `errinfo` -- nil、[String](../../../class/String.md)、[String](../../../class/String.md) の配列、あるいは [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の配列のいずれかを指定します。

```ruby title="例"
begin
  begin
    raise "inner"
  rescue
    raise "outer"
  end
rescue
  p $!.backtrace # => ["/path/to/test.rb:5:in 'rescue in <main>'", "/path/to/test.rb:2:in '<main>'"]
  $!.set_backtrace(["dummy1", "dummy2"])
  p $!.backtrace # => ["dummy1", "dummy2"]
end
```
