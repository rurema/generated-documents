# Object#itself

### def itself -> object

self を返します。

```ruby
string = 'my string' # => "my string"
p string.itself.object_id == string.object_id # => true
```
