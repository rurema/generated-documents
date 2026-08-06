# Kconv?.toutf32

### module_function def toutf32(str) -> String

文字列 str のエンコーディングを UTF-32 に変換して返します。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md)('-w32xm0', str)
を使ってください。

Kconv.kconv(str, Kconv::UTF32)と同じです。

- **param** `str` -- 変換元の文字列
- **SEE** [String#toutf32](../../../method/String/i/toutf32.md)
