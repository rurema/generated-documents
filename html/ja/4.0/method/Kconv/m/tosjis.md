# Kconv?.tosjis

### module_function def tosjis(str) -> String

文字列 str のエンコーディングを shift_jis に変換して返します。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md)('-sxm0', str)
を使ってください。

Kconv.kconv(str, Kconv::SJIS)と同じです。

- **param** `str` -- 変換元の文字列

- **SEE** [Kconv?.kconv](../../../method/Kconv/m/kconv.md), [String#tosjis](../../../method/String/i/tosjis.md)
