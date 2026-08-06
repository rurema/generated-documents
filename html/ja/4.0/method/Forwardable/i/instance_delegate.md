# Forwardable#instance_delegate

### def instance_delegate(hash) -> ()
### def delegate(hash)          -> ()

メソッドの委譲先を設定します。

- **param** `hash` -- 委譲先のメソッドがキー、委譲先のオブジェクトが値の
            [Hash](../../../class/Hash.md) を指定します。キーは [Symbol](../../../class/Symbol.md)、
            [String](../../../class/String.md) かその配列で指定します。


```ruby title="例"
require 'forwardable'

class Zap
    extend Forwardable
    delegate :length => :@str
    delegate [:first, :last] => :@arr
    def initialize
      @arr = %w/foo bar baz/
      @str = "world"
    end
end

zap = Zap.new
p zap.length # => 5
p zap.first  # => "foo"
p zap.last # => "baz"
```
