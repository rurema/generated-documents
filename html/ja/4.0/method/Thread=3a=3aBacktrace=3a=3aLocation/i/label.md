# Thread::Backtrace::Location#label

### def label -> String

self が表すフレームのラベルを返します。通常、メソッド名、クラス名、モジュール名などで構成されます。

例: [Thread::Backtrace::Location](../../../class/Thread=3a=3aBacktrace=3a=3aLocation.md) の例1を用いた例

```ruby
loc = c(0..1).first
p loc.label # => "a"
```

- **SEE** [Thread::Backtrace::Location#base_label](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/base_label.md)
