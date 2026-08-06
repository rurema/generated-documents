# Kconv?.kconv

### module_function def kconv(str, out_code, in_code = Kconv::AUTO) -> String

文字列 str のエンコーディングを out_code に変換したものを返します。in_code も指定されていたら str のエンコーディングが
in_code だとして動作します。

このメソッドはMIME エンコードされた文字列を展開し、いわゆる半角カナを全角に変換します。
これらを変換したくない場合は、 [NKF?.nkf](../../../method/NKF/m/nkf.md) を使ってください。

- **param** `str` -- 変換元の文字列
- **param** `out_code` -- 変換後のエンコーディング
- **param** `in_code` -- strのエンコーディング

- **SEE** [String#kconv](../../../method/String/i/kconv.md)
