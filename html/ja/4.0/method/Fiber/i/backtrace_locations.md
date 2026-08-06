# Fiber#backtrace_locations

### def backtrace_locations                -> [Thread::Backtrace::Location]
### def backtrace_locations(start)         -> [Thread::Backtrace::Location]
### def backtrace_locations(start, length) -> [Thread::Backtrace::Location]
### def backtrace_locations(range)         -> [Thread::Backtrace::Location]

[Fiber#backtrace](../../../method/Fiber/i/backtrace.md) と同じですが、実行スタックの各行を
[Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の配列で返します。

引数の意味は [Fiber#backtrace](../../../method/Fiber/i/backtrace.md) と同じです。

```ruby
f = Fiber.new { Fiber.yield }
f.resume

loc = f.backtrace_locations.first
p loc.class  # => Thread::Backtrace::Location
p loc.lineno # => 1
```

- **SEE** [Fiber#backtrace](../../../method/Fiber/i/backtrace.md), [Kernel?.caller_locations](../../../method/Kernel/m/caller_locations.md)
