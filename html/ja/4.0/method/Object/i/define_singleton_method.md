# Object#define_singleton_method

### def define_singleton_method(symbol, method) -> Symbol
### def define_singleton_method(symbol) { ... } -> Symbol

self に特異メソッド name を定義します。

- **param** `symbol` -- メソッド名を [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) で指定します。

- **param** `method` -- [Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) あるいは [UnboundMethod](../../../class/UnboundMethod.md) のいずれかのインスタンスを指定します。

- **return** -- メソッド名を表す [Symbol](../../../class/Symbol.md) を返します。

```ruby
class A
  class << self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  "I am: #{class_name}"
end
A.who_am_i   # => "I am: A"

guy = "Bob"
guy.define_singleton_method(:hello) { "#{self}: Hello there!" }
p guy.hello  # =>  "Bob: Hello there!"
```
