# rb_enc_str_new_literal

### VALUE rb_enc_str_new_literal(const char *str, rb_encoding *enc)

エンコーディングを指定して、C の文字列リテラルから新しい [String](../class/String.md) を作成します。
文字列リテラルの領域を、そのまま文字列の実体として使います。
文字列リテラルしか渡せません。変数は渡せません。

返り値は読み取り専用として扱ってください。
C の文字列リテラルへの書き込みは、すぐに SEGV を起こすことがあります。

- **param** `str` -- C の文字列リテラルです。
- **param** `enc` -- `str` のエンコーディングです。
- **return** -- `enc` のエンコーディングを持ち、実体が `str` である [String](../class/String.md) です。
