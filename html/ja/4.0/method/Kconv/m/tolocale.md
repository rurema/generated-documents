# Kconv?.tolocale

### module_function def tolocale(str) -> String

文字列 str のエンコーディングをロケールエンコーディングに変換して返します。

ロケールエンコーディングについては [Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) を見てください。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [String#encode](../../../method/String/i/encode.md)
を使ってください。

Kconv.kconv(str, Encoding.locale_charmap)と同じです。

- **param** `str` -- 変換元の文字列
- **SEE** [String#tolocale](../../../method/String/i/tolocale.md)
