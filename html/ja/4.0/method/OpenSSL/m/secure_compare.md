# OpenSSL?.secure_compare

### module_function def secure_compare(string1, string2) -> bool

文字列同士を、一定時間で比較します。

内部で SHA-256 によるハッシュ化を行ってから比較するため、[OpenSSL?.fixed_length_secure_compare](../../../method/OpenSSL/m/fixed_length_secure_compare.md) とは異なり、string1 と string2 の長さが異なっていても使えます。

string1 と string2 が同じ内容であれば true を、そうでなければ false を返します。

このメソッドは SHA-256 によるハッシュ化のためのコストがかかります。string1 と string2 の長さが等しいと分かっている場合は、[OpenSSL?.fixed_length_secure_compare](../../../method/OpenSSL/m/fixed_length_secure_compare.md) を使うほうが高速です。

- **param** `string1` -- 比較する文字列
- **param** `string2` -- 比較する文字列
