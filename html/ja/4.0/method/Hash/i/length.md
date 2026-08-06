# Hash#length

### def length -> Integer
### def size -> Integer

ハッシュの要素の数を返します。

```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
p h.length      #=> 4
p h.size        #=> 4
p h.delete("a") #=> 200
p h.length      #=> 3
p h.size        #=> 3
```
