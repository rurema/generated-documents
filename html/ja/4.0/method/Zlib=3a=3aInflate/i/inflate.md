# Zlib::Inflate#inflate

### def inflate(string) -> String

string を展開ストリームに入力します。

処理後、ストリームからの出力を返します。
このメソッドを呼ぶと出力バッファ及び入力バッファは空になります。
string が nil の場合はストリームへの入力を終了します。([Zlib::ZStream#finish](../../../method/Zlib=3a=3aZStream/i/finish.md) と同じ)。

- **param** `string` -- 展開する文字列を入力します。

- **raise** `Zlib::NeedDict` -- 展開に辞書が必要な場合に発生します。
                      [Zlib::Inflate#set_dictionary](../../../method/Zlib=3a=3aInflate/i/set_dictionary.md) メソッドで辞書をセットした
                      後で、空文字列と共にこのメソッドを再度呼び出して下さい。

```ruby
require 'zlib'

cstr = "x\234\313\310OOUH+MOTH\315K\001\000!\251\004\276"
inz = Zlib::Inflate.new
p inz.inflate(cstr) #=> "hoge fuga end"
```
