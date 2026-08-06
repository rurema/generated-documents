# StringIO#printf

### def printf(format, *obj)    -> nil

指定されたフォーマットに従い各引数 obj を文字列に変換して、自身に出力します。

- **param** `format` -- 文字列のフォーマットを指定します。[Kernel?.format](../../../method/Kernel/m/format.md) を参照して下さい。

- **param** `obj` -- 書き込みたいオブジェクトを指定します。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

```ruby title="例"
require "stringio"
a = StringIO.new("", 'r+')
a.printf("%c%c%c", 97, 98, 99)
p a.string                    #=> "abc"
```
