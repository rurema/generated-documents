# OptionParser#make_switch

### def make_switch(opts, block = nil) -> Array

[OptionParser#on](../../../method/OptionParser/i/on.md) や [OptionParser#on_head](../../../method/OptionParser/i/on_head.md)、[OptionParser#on_tail](../../../method/OptionParser/i/on_tail.md)
などがオプションを登録する際に内部で使う、下請けのメソッドです。
opts からオプションの短縮形・完全形・引数の変換方法・説明文などを解析し、その結果をまとめた配列を返します。

戻り値は以下の要素からなる配列です。

  - オプションの引数を解析するオブジェクト([OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) のインスタンス)
  - ショートオプション名の配列("-" を除いた文字列)
  - ロングオプション名の配列("--" を除いた文字列)
  - "--[no-]xxx" 形式のオプションを指定した場合の、否定形を扱う同様のオブジェクト(それ以外は nil)
  - 否定形のロングオプション名の配列(例: "no-xxx")

- **param** `opts` -- [OptionParser#on](../../../method/OptionParser/i/on.md) に指定するのと同じ形式の引数の配列を指定します。

- **param** `block` -- オプションが指定されたときに呼ばれるブロックを指定します。
             opts の要素として [Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) を含めることでも指定できます。

```ruby
require 'optparse'

parser = OptionParser.new
switch, short, long, = parser.make_switch(["-x", "--example VALUE", "説明"])
p short # => ["x"]
p long  # => ["example"]
```

- **SEE** [OptionParser#on](../../../method/OptionParser/i/on.md)
