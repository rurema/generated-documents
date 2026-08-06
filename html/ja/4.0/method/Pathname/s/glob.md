# Pathname.glob

### def Pathname.glob(pattern, flags=0) -> [Pathname]
### def Pathname.glob(pattern, flags=0) {|pathname| ...} -> nil

ワイルドカードの展開を行なった結果を、
Pathname オブジェクトの配列として返します。

引数の意味は、[Dir.glob](../../../method/Dir/s/glob.md) と同じです。 flag の初期値である 0 は「何も指定しない」ことを意味します。

ブロックが与えられたときは、ワイルドカードにマッチした Pathname オブジェクトを1つずつ引数としてそのブロックに与えて実行させます。この場合、値としては nil を返します。

- **param** `pattern` -- ワイルドカードパターンです
- **param** `flags` --   ワイルドカードのマッチ時のふるまいを変化させるフラグを指定します

```ruby
require "pathname"
p Pathname.glob("lib/i*.rb") # => [#<Pathname:lib/ipaddr.rb>, #<Pathname:lib/irb.rb>]
```

- **SEE** [Dir.glob](../../../method/Dir/s/glob.md)
- **SEE** [Pathname#glob](../../../method/Pathname/i/glob.md)
