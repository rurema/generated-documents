# rb_usascii_str_new_literal

### VALUE rb_usascii_str_new_literal(const char *str)

C の文字列リテラルから、US-ASCII の新しい [String](../class/String.md) を作成します。
文字列リテラルの領域を、そのまま文字列の実体として使います。
文字列リテラルしか渡せません。変数は渡せません。

返り値は読み取り専用として扱ってください。
C の文字列リテラルへの書き込みは、すぐに SEGV を起こすことがあります。

- **param** `str` -- C の文字列リテラルです。
- **return** -- 実体が `str` である、US-ASCII の [String](../class/String.md) です。
