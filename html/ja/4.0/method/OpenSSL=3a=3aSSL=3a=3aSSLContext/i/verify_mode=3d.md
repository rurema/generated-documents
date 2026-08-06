# OpenSSL::SSL::SSLContext#verify_mode=

### def verify_mode=(mode)

検証モードを設定します。

以下の定数の OR を取って指定します。
  - [OpenSSL::SSL::VERIFY_NONE](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_NONE.md)
  - [OpenSSL::SSL::VERIFY_PEER](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_PEER.md)
  - [OpenSSL::SSL::VERIFY_CLIENT_ONCE](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_CLIENT_ONCE.md)
  - [OpenSSL::SSL::VERIFY_FAIL_IF_NO_PEER_CERT](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_FAIL_IF_NO_PEER_CERT.md)
これらの定数の意味はクライアントモードとサーバモードでは異なる意味を持ちます。

デフォルトは nil で、VERIFY_NONE を意味します。

- **param** `mode` -- 設定するモード(整数値)
- **SEE** [OpenSSL::SSL::SSLContext#verify_mode](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode.md)
