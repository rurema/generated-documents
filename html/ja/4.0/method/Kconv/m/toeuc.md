# Kconv?.toeuc

### module_function def toeuc(str) -> String

文字列 str のエンコーディングを EUC-JP に変換して返します。

Kconv.kconv(str, Kconv::EUC)と同じです。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md)('-exm0', str)
を使ってください。

- **param** `str` -- 変換元の文字列

- **SEE** [Kconv?.kconv](../../../method/Kconv/m/kconv.md), [String#toeuc](../../../method/String/i/toeuc.md)
