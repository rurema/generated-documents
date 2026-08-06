# String#tolocale

### def tolocale -> String

self のエンコーディングをロケールエンコーディングに変換した文字列を返します。変換元のエンコーディングは文字列の内容から推測します。

ロケールエンコーディングについては [Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) を見てください。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [String#encode](../../../method/String/i/encode.md)
を使ってください。

- **SEE** [Kconv?.tolocale](../../../method/Kconv/m/tolocale.md)
