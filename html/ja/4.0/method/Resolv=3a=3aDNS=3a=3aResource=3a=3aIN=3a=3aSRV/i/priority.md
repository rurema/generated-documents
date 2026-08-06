# Resolv::DNS::Resource::IN::SRV#priority

### def priority -> Integer

ホストの優先順位を返します。

クライアントは利用可能なホストの中で最も priority が小さい数値のホストを利用しなければなりません。

priority が同じならば [Resolv::DNS::Resource::IN::SRV#weight](../../../method/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aSRV/i/weight.md)
で定義されるようにホストを選ぶべきです。

返り値の範囲は 0 から 65535 までの整数値です。
