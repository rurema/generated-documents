# StringScanner#scan_integer

### def scan_integer(base: 10) -> Integer | nil

スキャンポインタの地点から整数をスキャンし、`Integer` に変換して返します。マッチしなかった場合は `nil` を返します。

`base` を省略した場合や 10 を指定した場合は `/[+-]?\d+/` にマッチする部分をスキャンします。`base` に 16 を指定した場合は `/[+-]?(0x)?[0-9a-fA-F]+/` にマッチする部分をスキャンします。

- **param** `base` -- スキャンする整数の基数を指定します。10 または 16 を指定できます。
- **raise** `ArgumentError` -- `base` に 10, 16 以外を指定すると発生します。
- **raise** `Encoding::CompatibilityError` -- スキャン対象の文字列が ASCII 互換でないエンコーディングのとき発生します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('42end')
p s.scan_integer         # => 42
p s.rest                 # => "end"

s = StringScanner.new('-3')
p s.scan_integer         # => -3

s = StringScanner.new('abc')
p s.scan_integer         # => nil
```

```ruby title="例: 16 進数"
require 'strscan'

s = StringScanner.new('0x1fg')
p s.scan_integer(base: 16)   # => 31
p s.rest                     # => "g"
```

- **SEE** [StringScanner#scan](../../../method/StringScanner/i/scan.md), [StringScanner#scan_byte](../../../method/StringScanner/i/scan_byte.md)
