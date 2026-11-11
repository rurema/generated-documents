# OptionParser#order!

### def order!(argv = self.default_argv, into: nil, exact: self.require_exact)             -> [String]
### def order!(argv = self.default_argv, into: nil, exact: self.require_exact) {|s| ...}   -> [String]

与えられた argv を順番に破壊的にパースします。
argv からオプションがすべて取り除かれます。
argv を返します。

オプションではないコマンドの引数(下の例で言うと somefile)に出会うと、パースを中断します。
ブロックが与えられている場合は、パースを中断せずに引数をブロックに渡してブロックを評価し、パースを継続します。argv を返します。

下の例で言うと、コマンドの引数 somefile よりも後ろにオプションを置くことができません。
-b もコマンドのオプションではない引数として扱われてしまいます。

`into` と `exact` 以外のキーワード引数を渡しても無視されます([ArgumentError](../../../class/ArgumentError.md) は発生しません)。


- **param** `argv` -- パースしたい引数を文字列の配列で指定します。

- **param** `into` -- オプションを格納するハッシュを指定します。
            指定したハッシュにはオプションの名前をキーとして、[OptionParser#on](../../../method/OptionParser/i/on.md)に渡されたブロックの値が格納されます。
            キーの名前はロングオプションが定義されていればロングオプションの値を、ショートオプションのみの場合はショートオプションの値から、先頭の "-" を除いてシンボル化した値が使用されます。

- **param** `exact` -- 真を指定すると、ロングオプションを省略した形([OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) を参照)を受け付けなくなります。省略時は [OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) の値です。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。

```ruby title="opt.rb"
require 'optparse'
opt = OptionParser.new

opt.on('-a [VAL]') {|v| p :a }
opt.on('-b') {|v| p :b }

opt.order!(ARGV)
p ARGV
```

↓

```console
$ ruby opt.rb -a foo somefile -b
:a
["somefile", "-b"]
```
