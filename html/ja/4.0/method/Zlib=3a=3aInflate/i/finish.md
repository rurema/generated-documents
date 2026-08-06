# Zlib::Inflate#finish

### def finish -> String

展開ストリームを終了します。

ストリーム内に残っていたデータ (つまり圧縮データの後についていたゴミデータ) を返します。
[Zlib::ZStream#finished?](../../../method/Zlib=3a=3aZStream/i/finished=3f.md) が真でない時に finish を呼ぶと例外が発生します。

展開ストリームは圧縮データ内に終了コードを発見した時点で自ら終了するため、明示的に finish を呼ぶ必要は必ずしもありませんが、このメソッドは圧縮データが正しく終了しているかを確認するのに便利です。

```ruby
require 'zlib'

cstr = "x\234\313\310OOUH+MOTH\315K\001\000!\251\004\276"
inz = Zlib::Inflate.new
inz << cstr
p inz.finish #=> "hoge fuga end"
```
