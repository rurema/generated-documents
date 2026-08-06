# Thread::Backtrace::Location#base_label

### def base_label -> String

self が表すフレームの基本ラベルを返します。通常、
[Thread::Backtrace::Location#label](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/label.md) から修飾を取り除いたもので構成されます。

```ruby title="例"
# foo.rb
class Foo
  attr_accessor :locations
  def initialize(skip)
    @locations = caller_locations(skip)
  end
end

Foo.new(0..2).locations.map do |call|
  puts call.base_label
end

# => initialize
# new
# <main>
```

- **SEE** [Thread::Backtrace::Location#label](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/label.md)
