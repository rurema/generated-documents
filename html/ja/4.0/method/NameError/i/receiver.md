# NameError#receiver

### def receiver -> object

self が発生した時のレシーバオブジェクトを返します。

```ruby title="例"
class Sample
  def foo
    return "foo"
  end
end

bar = Sample.new
begin
  bar.bar
rescue NameError => err
  p err.receiver  # => #<Sample:0x007fd4d89b3110>
  p err.receiver.foo  # => "foo"
end
```
