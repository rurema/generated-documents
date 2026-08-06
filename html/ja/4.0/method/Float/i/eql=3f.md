# Float#eql?

### def eql?(other)   -> bool

`self` と `other` のクラスが等しくかつ `==` メソッドで比較して等しい場合に `true` を返します。
そうでない場合に `false` を返します。

- **param** `other` -- `self` と比較したい数値を指定します。

```ruby title="例"
p 1.0.eql?(1) # => false
p 1.0.eql?(1.0) # => true
```
