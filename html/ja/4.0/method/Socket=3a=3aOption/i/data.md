# Socket::Option#data

### def data -> String
### def to_s -> String

オプションのデータ(内容)を文字列で返します。

内容が整数や真偽値、もしくは struct linger であることがわかっている場合には、
[Socket::Option#int](../../../method/Socket=3a=3aOption/i/int.md), [Socket::Option#bool](../../../method/Socket=3a=3aOption/i/bool.md), [Socket::Option#linger](../../../method/Socket=3a=3aOption/i/linger.md)
を用いて

to_s は過去との互換性のために存在します。
