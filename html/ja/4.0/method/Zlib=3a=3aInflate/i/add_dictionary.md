# Zlib::Inflate#add_dictionary

### def add_dictionary(string) -> self
{: since="2.0.0"}

今後必要になるかもしれない辞書 string を、あらかじめ展開ストリームに登録します。

複数の辞書を登録することができます。展開ストリームは、実際に要求される辞書に応じて、登録済みの辞書の中から適切なものを自動的に選択します。[Zlib::Inflate#set_dictionary](../../../method/Zlib=3a=3aInflate/i/set_dictionary.md) と違い、[Zlib::NeedDict](../../../class/Zlib=3a=3aNeedDict.md) 例外を捕捉してから辞書をセットし直す必要がありません。

- **param** `string` -- 展開ストリームにあらかじめ登録しておく辞書を文字列で指定します。

```ruby
require 'zlib'

dict = 'hoge_fuga_ugougo'
str = 'hogehogefugafuga' * 3

dez = Zlib::Deflate.new
dez.set_dictionary(dict)
compressed = dez.deflate(str)
compressed << dez.finish

inz = Zlib::Inflate.new
inz.add_dictionary(dict)
p inz.inflate(compressed) == str # => true
```

- **SEE** [Zlib::Inflate#set_dictionary](../../../method/Zlib=3a=3aInflate/i/set_dictionary.md)
