# Thread::Backtrace::Location#lineno

### def lineno -> Integer

self が表すフレームの行番号を返します。

例: [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の例1を用いた例

```ruby
loc = c(0..1).first
p loc.lineno # => 2
```
