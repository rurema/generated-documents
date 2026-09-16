# StringScanner#fixed_anchor?

### def fixed_anchor? -> bool
{: since="2.7.0"}

`self` が fixed anchor モードで生成されていれば `true` を、そうでなければ `false` を返します。

fixed anchor モードは [StringScanner.new](../../../method/StringScanner/s/new.md) に `fixed_anchor: true` を指定すると有効になります。このモードでは、正規表現中の `\A` は現在のスキャンポインタの位置ではなく元の文字列の先頭にマッチするようになり、`^` はスキャンポインタの位置に関係なく通常の行頭にマッチするようになります。

```ruby title="例"
require 'strscan'

s1 = StringScanner.new('test')
p s1.fixed_anchor?                        # => false

s2 = StringScanner.new('test', fixed_anchor: true)
p s2.fixed_anchor?                        # => true
```

```ruby title="例: \A の挙動の違い"
require 'strscan'

s1 = StringScanner.new("ab\ncd")
s1.scan(/a/)
p s1.scan(/\Ab/)                          # => "b"

s2 = StringScanner.new("ab\ncd", fixed_anchor: true)
s2.scan(/a/)
p s2.scan(/\Ab/)                          # => nil
```

```ruby title="例: ^ の挙動の違い"
require 'strscan'

s1 = StringScanner.new("ab\ncd")
s1.scan(/a/)
p s1.scan(/^b/)                           # => "b"
s1.scan(/\n/)
p s1.scan(/^c/)                           # => "c"

s2 = StringScanner.new("ab\ncd", fixed_anchor: true)
s2.scan(/a/)
p s2.scan(/^b/)                           # => nil
s2.scan(/b\n/)
p s2.scan(/^c/)                           # => "c"
```

- **SEE** [StringScanner.new](../../../method/StringScanner/s/new.md)
