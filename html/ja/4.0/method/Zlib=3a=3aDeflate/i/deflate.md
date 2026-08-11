# Zlib::Deflate#deflate

### def deflate(string, flush = Zlib::NO_FLUSH) -> String

string を圧縮ストリームに入力します。処理後、ストリームからの出力を返します。このメソッドを呼ぶと出力バッファ及び入力バッファは空になります。string が nil の場合はストリームへの入力を終了します。([Zlib::ZStream#finish](../../../method/Zlib=3a=3aZStream/i/finish.md) と同じ)。
flush には [Zlib::NO_FLUSH](../../../method/Zlib/c/NO_FLUSH.md), [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md),
[Zlib::FULL_FLUSH](../../../method/Zlib/c/FULL_FLUSH.md), [Zlib::FINISH](../../../method/Zlib/c/FINISH.md) のいずれかを指定します。
詳しくは zlib.h を参照して下さい。

- **param** `string` -- 圧縮する文字列を指定します。
- **param** `flush` -- [Zlib::NO_FLUSH](../../../method/Zlib/c/NO_FLUSH.md), [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md),
             [Zlib::FULL_FLUSH](../../../method/Zlib/c/FULL_FLUSH.md), [Zlib::FINISH](../../../method/Zlib/c/FINISH.md) のいずれかを指定します。

```ruby
require 'zlib'

dez = Zlib::Deflate.new
p dez.deflate("123" * 20, Zlib::FINISH) # => "x\2343426$\027\001\000e\217\v\271"
```
