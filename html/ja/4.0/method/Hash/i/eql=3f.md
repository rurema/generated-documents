# Hash#eql?

### def ==(other) -> bool
### def ===(other) -> bool
### def eql?(other) -> bool

自身と other が同じ数のキーを保持し、キーが eql? メソッドで比較して全て等しく、値が == メソッドで比較して全て等しい場合に真を返します。

- **param** `other` -- 自身と比較したい Hash オブジェクトを指定します。

```ruby title="例"
p({ 1 => :a } == { 1 => :a })            #=> true
p({ 1 => :a } == { 1 => :a, 2 => :b })   #=> false
p({ 1 => :a } == { 1.0 => :a })          #=> false  ( 1.eql?(1.0) は false なので)

p({ :x => 1 } == { :x => 1.0 })          #=> true   ( 1 == 1.0 は true なので)
```

- **SEE** [Hash#equal?](../../../method/Hash/i/equal=3f.md)
