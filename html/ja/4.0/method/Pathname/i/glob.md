# Pathname#glob

### def glob(pattern, flags=0) -> [Pathname]
### def glob(pattern, flags=0) {|pathname| ...} -> nil

ワイルドカードの展開を行なった結果を、
Pathname オブジェクトの配列として返します。

引数の意味は、[Dir.glob](../../../method/Dir/s/glob.md) と同じです。 flag の初期値である 0 は「何も指定しない」ことを意味します。

ブロックが与えられたときは、ワイルドカードにマッチした Pathname オブジェクトを1つずつ引数としてそのブロックに与えて実行させます。この場合、値としては nil を返します。

このメソッドは内部で [Dir.glob](../../../method/Dir/s/glob.md) の base キーワード引数を使っています。

- **param** `pattern` -- ワイルドカードパターンです
- **param** `flags` --   ワイルドカードのマッチ時のふるまいを変化させるフラグを指定します

```ruby
require "pathname"
p Pathname("ruby-2.4.2").glob("R*.md") # => [#<Pathname:ruby-2.4.2/README.md>, #<Pathname:ruby-2.4.2/README.ja.md>]
```

- **SEE** [Dir.glob](../../../method/Dir/s/glob.md)
- **SEE** [Pathname.glob](../../../method/Pathname/s/glob.md)
