# Thread::Backtrace::Location#path

### def path -> String

self が表すフレームのファイル名を返します。

例: [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の例1を用いた例

```ruby
loc = c(0..1).first
p loc.path # => "caller_locations.rb"
```

- **SEE** [Thread::Backtrace::Location#absolute_path](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/absolute_path.md)
