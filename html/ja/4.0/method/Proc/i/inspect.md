# Proc#inspect

### def to_s    -> String
### def inspect -> String
{: since=""}

self の文字列表現を返します。

可能なら self を生成したソースファイル名、行番号を含みます。

```ruby title="例"
p Proc.new {
   true
}.to_s

# => "#<Proc:0x401a880c -:3>"
```
