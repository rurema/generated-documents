# UnboundMethod#owner

### def owner    -> Class | Module

このメソッドが定義されている class か module を返します。

```ruby title="例"
p Integer.instance_method(:to_s).owner # => Integer
p Integer.instance_method(:to_c).owner # => Numeric
p Integer.instance_method(:hash).owner # => Kernel
```
