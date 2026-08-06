# Time#mon

### def mon      -> Integer
### def month    -> Integer

月を整数で返します。

```ruby
t = Time.local(2000,1,2,3,4,5)  # => 2000-01-02 03:04:05 +0900
p t.month                       # => 1
p t.mon                         # => 1
```
