# Hash.try_convert

### def Hash.try_convert(obj) -> Hash | nil

to_hash メソッドを用いて obj をハッシュに変換しようとします。

何らかの理由で変換できないときには nil を返します。
このメソッドは引数がハッシュであるかどうかを調べるために使えます。

```ruby
p Hash.try_convert({1=>2}) # => {1=>2}
p Hash.try_convert("1=>2") # => nil
```
