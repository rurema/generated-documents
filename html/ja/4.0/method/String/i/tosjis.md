# String#tosjis

### def tosjis -> String

self のエンコーディングを shift_jis に変換した文字列を返します。変換元のエンコーディングは文字列の内容から推測します。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md)('-sxm0', str)
を使ってください。

- **SEE** [Kconv?.tosjis](../../../method/Kconv/m/tosjis.md)
