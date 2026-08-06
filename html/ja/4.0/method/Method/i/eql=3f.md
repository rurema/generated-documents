# Method#eql?

### def ==(other)     -> bool
### def eql?(other)   -> bool
{: since=""}

自身と other が同じインスタンスの同じメソッドを表す場合に
true を返します。そうでない場合に false を返します。

- **param** `other` -- 自身と比較したいオブジェクトを指定します。

```ruby title="例"
s = "bar"
a = s.method(:size)
b = s.method(:size)
p a == b                            #=> true
```
