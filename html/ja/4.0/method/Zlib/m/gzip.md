# Zlib?.gzip

### module_function def gzip(string, level: nil, strategy: nil) -> String
{: since="2.4.0"}

string を gzip 形式に圧縮した文字列を返します。

- **param** `string` -- 圧縮する文字列を指定します。
- **param** `level` -- 圧縮の水準を整数で指定します。有効な値は [Zlib::NO_COMPRESSION](../../../method/Zlib/c/NO_COMPRESSION.md), [Zlib::BEST_SPEED](../../../method/Zlib/c/BEST_SPEED.md), [Zlib::BEST_COMPRESSION](../../../method/Zlib/c/BEST_COMPRESSION.md), [Zlib::DEFAULT_COMPRESSION](../../../method/Zlib/c/DEFAULT_COMPRESSION.md) (デフォルト) 及び 0 から 9 の整数です。
- **param** `strategy` -- 圧縮方法を整数で指定します。有効な値は [Zlib::FILTERED](../../../method/Zlib/c/FILTERED.md), [Zlib::HUFFMAN_ONLY](../../../method/Zlib/c/HUFFMAN_ONLY.md), [Zlib::DEFAULT_STRATEGY](../../../method/Zlib/c/DEFAULT_STRATEGY.md) (デフォルト) 等です。[Zlib::Deflate.new](../../../method/Zlib=3a=3aDeflate/s/new.md) を参照してください。

```ruby
require 'zlib'

compressed = Zlib.gzip('hoge fuga')
p Zlib.gunzip(compressed) # => "hoge fuga"
```

- **SEE** [Zlib?.gunzip](../../../method/Zlib/m/gunzip.md)
