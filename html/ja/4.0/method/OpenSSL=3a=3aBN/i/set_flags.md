# OpenSSL::BN#set_flags

### def set_flags(flags) -> nil

`self` にフラグを立てます。

flags には `OpenSSL::BN::CONSTTIME` を指定できます。このフラグを立てることで、定数時間での計算を強制できます。

- **param** `flags` -- 立てるフラグを表す整数
- **SEE** [OpenSSL::BN#get_flags](../../../method/OpenSSL=3a=3aBN/i/get_flags.md)
