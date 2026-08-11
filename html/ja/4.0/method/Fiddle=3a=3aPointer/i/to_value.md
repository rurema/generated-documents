# Fiddle::Pointer#to_value

### def to_value    -> object

自身はヒープに確保された Ruby のオブジェクトを指すポインタであると仮定して、自身が指すオブジェクトを返します。

```ruby title="例"
require 'fiddle'
 
s = 'abc'
i = Fiddle.dlwrap(s)
cptr = Fiddle::Pointer.new(i)
p cptr.to_value   # => "abc"
```
