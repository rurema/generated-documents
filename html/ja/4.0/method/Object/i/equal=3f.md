# Object#equal?

### def equal?(other) -> bool

other が self 自身の時、真を返します。

二つのオブジェクトが同一のものかどうか調べる時に使用します。
このメソッドを再定義してはいけません。

お互いの[Object#object_id](../../../method/Object/i/object_id.md)が一致するかどうかを調べます。

- **param** `other` -- 比較するオブジェクトです。

```ruby
p("foo".equal?("bar")) # => false
p("foo".equal?("foo")) # => false

p(4.equal?(4)) # => true
p(4.equal?(4.0)) # => false

p(:foo.equal? :foo) # => true
```

- **SEE** [Object#object_id](../../../method/Object/i/object_id.md),[Object#==](../../../method/Object/i/=3d=3d.md),[Object#eql?](../../../method/Object/i/eql=3f.md),[Symbol](../../../class/Symbol.md)
