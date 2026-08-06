# Module#const_added

### def const_added(name) -> ()

定数 name が追加された時にインタプリタがこのメソッドを呼び出します。

```ruby
module Chatty
  def self.const_added(const_name)
    super
    puts "Added #{const_name.inspect}"
  end
  FOO = 1
end
# => Added :FOO
```
