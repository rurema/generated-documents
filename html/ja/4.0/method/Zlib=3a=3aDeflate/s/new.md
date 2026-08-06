# Zlib::Deflate.new

### def Zlib::Deflate.new(level = Zlib::DEFAULT_COMPRESSION, windowBits = Zlib::MAX_WBITS, memlevel = Zlib::DEF_MEM_LEVEL, strategy = Zlib::DEFAULT_STRATEGY) -> Zlib::Deflate

圧縮ストリームを作成します。各引数の詳細は zlib.h を参照して下さい。nil の場合はデフォルトの値を使用します。

- **param** `level` -- 0-9の範囲の整数, またはZlib::DEFAULT_COMPRESSIONを指定します。詳細はzlib.hを参照してください。
- **param** `windowBits` -- ウィンドウの大きさを整数で指定します。詳細はzlib.hを参照してください。
- **param** `memlevel` -- 0-9の範囲の整数で指定します。詳細はzlib.hを参照してください。
- **param** `strategy` -- [Zlib::FILTERED](../../../method/Zlib/c/FILTERED.md), [Zlib::HUFFMAN_ONLY](../../../method/Zlib/c/HUFFMAN_ONLY.md), [Zlib::DEFAULT_STRATEGY](../../../method/Zlib/c/DEFAULT_STRATEGY.md)など指定します。詳細はzlib.h を参照してください。

```ruby
require 'zlib'

dez = Zlib::Deflate.new(9, nil, 9)
dez << "123" * 20
dezstr = dez.finish
p dezstr #=> "x\3323426$\027\001\000e\217\v\271"

inz = Zlib::Inflate.new
inzstr = inz.inflate(dezstr)
p inzstr  #=> "123123123123123123123123123123123123123123123123123123123123"
```
