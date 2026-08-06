# OpenSSL::X509::Store#flags=

### def flags=(flags)

CRL に関するフラグを設定します。

以下の定数から必要なものを選んで OR 取り、渡します。
  - [OpenSSL::X509::V_FLAG_CRL_CHECK](../../../method/OpenSSL=3a=3aX509/c/V_FLAG_CRL_CHECK.md)
  - [OpenSSL::X509::V_FLAG_CRL_CHECK_ALL](../../../method/OpenSSL=3a=3aX509/c/V_FLAG_CRL_CHECK_ALL.md)

このフラグは [OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md) で検証する場合に利用されます。
[OpenSSL::X509::StoreContext.new](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/s/new.md) で証明書ストアコンテキストを生成する場合にはそのコンテキストにフラグがコピーされます。

デフォルトではフラグは設定されていません。

- **param** `flags` -- 設定するフラグ(整数値)
- **SEE** [OpenSSL::X509::StoreContext#flags=](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/flags=3d.md)
