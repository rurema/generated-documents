# Dir#close

### def close    -> nil

ディレクトリストリームをクローズします。
クローズに成功すれば nil を返します。

```ruby title="例"
d = Dir.new(".")
p d.close  # => nil
```
