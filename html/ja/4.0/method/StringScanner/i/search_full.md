# StringScanner#search_full

### def search_full(regexp, s, f) -> object

regexp で指定された正規表現とマッチするまで文字列をスキャンします。

マッチに成功すると、s と f の値によって以下のように動作します。

    - s が true ならばスキャンポインタを進めます。
    - s が false ならばスキャンポインタを進めません。
    - f が true ならばスキャン開始位置からマッチした部分の末尾までの部分文字列を返します。
    - f が false ならばスキャン開始位置からマッチした部分の末尾までの部分文字列の長さを返します。

マッチに失敗すると s や f に関係なく nil を返します。

このメソッドは s と f の組み合わせにより、他のメソッドと同等の動作になります。

    - search_full(regexp, true, true) は [StringScanner#scan_until](../../../method/StringScanner/i/scan_until.md) と同等。
    - search_full(regexp, true, false) は [StringScanner#skip_until](../../../method/StringScanner/i/skip_until.md) と同等。
    - search_full(regexp, false, true) は [StringScanner#check_until](../../../method/StringScanner/i/check_until.md) と同等。
    - search_full(regexp, false, false) は [StringScanner#exist?](../../../method/StringScanner/i/exist=3f.md) と同等。

- **param** `regexp` -- マッチに用いる正規表現を指定します。

- **param** `s` -- true ならばスキャンポインタを進めます。
         false ならばスキャンポインタを進めません。

- **param** `f` -- true ならばマッチした部分文字列を返します。
         false ならばマッチした部分文字列の長さを返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.search_full(/t/, true, true)       #=> "t"
p s.search_full(/str/, false, true)    #=> "est str"
p s.search_full(/string/, true, true)  #=> "est string"
```

- **SEE** [StringScanner#scan_until](../../../method/StringScanner/i/scan_until.md) [StringScanner#skip_until](../../../method/StringScanner/i/skip_until.md) [StringScanner#check_until](../../../method/StringScanner/i/check_until.md) [StringScanner#exist?](../../../method/StringScanner/i/exist=3f.md)
