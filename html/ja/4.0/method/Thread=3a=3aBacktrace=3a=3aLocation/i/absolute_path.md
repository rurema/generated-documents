# Thread::Backtrace::Location#absolute_path

### def absolute_path -> String

self が表すフレームの絶対パスを返します。

```ruby title="例"
# foo.rb
class Foo
  attr_accessor :locations
  def initialize(skip)
    @locations = caller_locations(skip)
  end
end

Foo.new(0..2).locations.map do |call|
  puts call.absolute_path
end

# => /path/to/foo.rb
# /path/to/foo.rb
# /path/to/foo.rb
```

- **SEE** [Thread::Backtrace::Location#path](../../../method/Thread=3a=3aBacktrace=3a=3aLocation/i/path.md)
