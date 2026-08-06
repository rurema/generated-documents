# String#kconv

### def kconv(out_code, in_code = Kconv::AUTO) -> String

self のエンコーディングを out_code に変換した文字列を返します。
out_code in_code は [Kconv](../../../class/Kconv.md) の定数で指定します。

このメソッドは MIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md) を使ってください。

- **param** `out_code` -- 変換後のエンコーディングを [Kconv](../../../class/Kconv.md) の定数で指定します。
- **param** `in_code` -- 変換する文字列のエンコーディングを [Kconv](../../../class/Kconv.md) の定数で指定します。

- **SEE** [Kconv?.kconv](../../../method/Kconv/m/kconv.md)
