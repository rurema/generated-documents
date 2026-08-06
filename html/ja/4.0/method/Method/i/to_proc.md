# Method#to_proc

### def to_proc -> Proc

self を call する [Proc](../../../class/Proc.md) オブジェクトを生成して返します。

```ruby title="例"
class Foo
  def foo
    "foo"
  end
end

m = Foo.new.method(:foo) # => #<Method: Foo#foo>
pr = m.to_proc # => #<Proc:0x007f874d026008 (lambda)>
pr.call # => "foo"
```
