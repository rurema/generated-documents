# Socket::Option#byte

### def byte -> Integer
{: since="2.1.0"}

オプションのデータ(内容)を 1 バイトの整数に変換して返します。

- **raise** `TypeError` -- dataのバイト数が不適切である(sizeof(char)と異なる)場合に発生します
- **SEE** [Socket::Option#data](../../../method/Socket=3a=3aOption/i/data.md)
