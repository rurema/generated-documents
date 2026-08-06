# Resolv::DNS::Resource::IN::SRV#weight

### def weight -> Integer

サーバを選択するための「重み」です。

[Resolv::DNS::Resource::IN::SRV#priority](../../../method/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aSRV/i/priority.md) が同じ場合にこの項目が利用されます。
重みに比例した確率でホストを選択すべきです。
返り値の範囲は 0 から 65535 までの整数です。
選択肢が一つしかない、つまり選択する必要がない場合にはこの値は人間が読みやすいよう 0 にすべきです。
