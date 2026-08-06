# UnboundMethod#bind_call

### def bind_call(recv, *args) -> object
### def bind_call(recv, *args) { ... } -> object

self を recv に bind して args を引数として呼び出します。

self.bind(recv).call(*args) と同じ意味です。

```ruby
puts Kernel.instance_method(:inspect).bind_call(BasicObject.new) # => #<BasicObject:0x000055c65e8ea7b8>
```

- **SEE** [UnboundMethod#bind](../../../method/UnboundMethod/i/bind.md), [Method#call](../../../method/Method/i/call.md)
