# Net::HTTP#verify_depth=

### def verify_depth=(depth)

証明書チェイン上の検証する最大の深さを設定します。

デフォルトは nil で、この場合 OpenSSL のデフォルト値(9)が使われます。

- **param** `depth` -- 最大深さを表す整数
- **SEE** [Net::HTTP#verify_depth](../../../method/Net=3a=3aHTTP/i/verify_depth.md), [OpenSSL::SSL::SSLContext#verify_depth=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_depth=3d.md)
