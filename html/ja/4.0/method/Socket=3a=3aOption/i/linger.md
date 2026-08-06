# Socket::Option#linger

### def linger -> [bool, Integer]

オプションが SOL_SOCKET/SO_LINGER である場合に、オプションのデータ(内容)を真偽値と整数のペアとして返します。

- **raise** `TypeError` -- dataのバイト数が不適切である(sizeof(struct linger)と異なる)場合や、
                 level/optname が SOL_SOCKET/SO_LINGER でないに発生します
- **SEE** [Socket::Option#data](../../../method/Socket=3a=3aOption/i/data.md)
