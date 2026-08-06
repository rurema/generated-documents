# module Shellwords

UNIX Bourne シェルの単語分割規則に従った文字列分割と文字列エスケープを行うモジュールです。

Shellwords モジュールは、空白区切りの単語分割を行う shellsplit、文字列をエスケープする shellescape、文字列エスケープを文字列リストに対して適用する shelljoin の3つのモジュール関数を提供します。

これらのメソッドの別名として、Shellwords.split, Shellwords.escape,
Shellwords.join も使用可能です。
ただし、これらの短縮形式のメソッドはクラスメソッドとしてのみ定義されるため、関数形式の呼び出しはできません。

## Class Methods

- [escape](../method/Shellwords/s/escape.md)
- [join](../method/Shellwords/s/join.md)
- [split](../method/Shellwords/s/split.md)

## Module Functions

- [shellescape](../method/Shellwords/m/shellescape.md)
- [shelljoin](../method/Shellwords/m/shelljoin.md)
- [shellsplit](../method/Shellwords/m/shellsplit.md)
- [shellwords](../method/Shellwords/m/shellwords.md)
