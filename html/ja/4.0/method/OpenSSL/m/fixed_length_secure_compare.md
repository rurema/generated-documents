# OpenSSL?.fixed_length_secure_compare

### module_function def fixed_length_secure_compare(string1, string2) -> bool

長さの等しい文字列同士を、一定時間で比較します。[OpenSSL::HMAC](../../../class/OpenSSL=3a=3aHMAC.md) の計算結果同士の比較など、固定長の値を比較する場合に向いています。

比較にかかる時間が入力の値に依存しないようになっているため、比較結果の違いにかかる時間差から内容を推測するタイミング攻撃を防げます。

string1 と string2 が同じ内容であれば true を、長さが等しく内容が異なる場合は false を返します。

- **param** `string1` -- 比較する文字列
- **param** `string2` -- 比較する文字列
- **raise** `ArgumentError` -- string1 と string2 の長さが異なる場合に発生します
