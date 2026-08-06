# Thread::Backtrace::Location#inspect

### def inspect -> String

[Thread::Backtrace::Location#to_s](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/to_s.md) の結果を人間が読みやすいような文字列に変換したオブジェクトを返します。

```ruby title="例"
# foo.rb
class Foo
  attr_accessor :locations
  def initialize(skip)
    @locations = caller_locations(skip)
  end
end

Foo.new(0..2).locations.map do |call|
  puts call.inspect
end

# => "path/to/foo.rb:5:in 'initialize'"
# "path/to/foo.rb:9:in 'new'"
# "path/to/foo.rb:9:in '<main>'"
```
