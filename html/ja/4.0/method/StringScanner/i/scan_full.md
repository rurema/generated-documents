# StringScanner#scan_full

### def scan_full(regexp, s, f) -> object

スキャンポインタの位置から regexp と文字列のマッチを試します。

マッチに成功すると、s と f の値によって以下のように動作します。

    - s が true ならばスキャンポインタを進めます。
    - s が false ならばスキャンポインタを進めません。
    - f が true ならばマッチした部分文字列を返します。
    - f が false ならばマッチした部分文字列の長さを返します。

マッチに失敗すると s や f に関係なく nil を返します。

このメソッドは s と f の組み合わせにより、他のメソッドと同等の動作になります。

    - scan_full(regexp, true, true) は [StringScanner#scan](../../../method/StringScanner/i/scan.md) と同等。
    - scan_full(regexp, true, false) は [StringScanner#skip](../../../method/StringScanner/i/skip.md) と同等。
    - scan_full(regexp, false, true) は [StringScanner#check](../../../method/StringScanner/i/check.md) と同等。
    - scan_full(regexp, false, false) は [StringScanner#match?](../../../method/StringScanner/i/match=3f.md) と同等。

- **param** `regexp` -- マッチに用いる正規表現を指定します。

- **param** `s` -- true ならばスキャンポインタを進めます。
         false ならばスキャンポインタを進めません。

- **param** `f` -- true ならばマッチした部分文字列を返します。
         false ならばマッチした部分文字列の長さを返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.scan_full(/\w+/, true, true)     # => "test"
p s.scan_full(/\s+/, false, true)    # => " "
p s.scan_full(/\s+/, true, false)    # => 1
p s.scan_full(/\w+/, false, false)   # => 6
p s.scan_full(/\w+/, true, true)     # => "string"
```

- **SEE** [StringScanner#scan](../../../method/StringScanner/i/scan.md) [StringScanner#skip](../../../method/StringScanner/i/skip.md) [StringScanner#check](../../../method/StringScanner/i/check.md)  [StringScanner#match?](../../../method/StringScanner/i/match=3f.md)
