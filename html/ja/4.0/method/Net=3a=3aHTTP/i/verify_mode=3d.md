# Net::HTTP#verify_mode=

### def verify_mode=(mode)

検証モードを設定します。

詳しくは [OpenSSL::SSL::SSLContext#verify_mode](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode.md) を見てください。
クライアント側なので、
[OpenSSL::SSL::VERIFY_NONE](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_NONE.md) か [OpenSSL::SSL::VERIFY_PEER](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_PEER.md)
のいずれかを用います。

デフォルトは nil で、VERIFY_NONE を意味します。
