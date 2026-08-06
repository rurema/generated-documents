# Exception#backtrace_locations

### def backtrace_locations -> [Thread::Backtrace::Location]

バックトレース情報を返します。[Exception#backtrace](../../../method/Exception/i/backtrace.md)に似ていますが、
[Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の配列を返す点が異なります。

現状では [Exception#set_backtrace](../../../method/Exception/i/set_backtrace.md) によって戻り値が変化する事はありません。

```ruby title="例: test.rb"
require "date"
def check_long_month(month)
  return if Date.new(2000, month, -1).day == 31
  raise "#{month} is not long month"
end

def get_exception
  return begin
    yield
  rescue => e
    e
  end
end

e = get_exception { check_long_month(2) }
p e.backtrace_locations
# => ["test.rb:4:in 'check_long_month'", "test.rb:15:in 'block in <main>'", "test.rb:9:in 'get_exception'", "test.rb:15:in '<main>'"]
```

- **SEE** [Exception#backtrace](../../../method/Exception/i/backtrace.md)
