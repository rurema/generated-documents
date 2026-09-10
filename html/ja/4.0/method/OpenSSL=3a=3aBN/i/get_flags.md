# OpenSSL::BN#get_flags

### def get_flags(flags) -> Integer

`self` に立っているフラグを返します。

flags をビットマスクとして使い、`self` の内部フラグとの AND を取った値を返します。

- **param** `flags` -- 調べたいフラグを表す整数(ビットマスク)
- **SEE** [OpenSSL::BN#set_flags](../../../method/OpenSSL=3a=3aBN/i/set_flags.md)
