# OpenSSL::SSL::SSLSocket#alpn_protocol

### def alpn_protocol -> String | nil

ハンドシェイクの結果、Application-Layer Protocol Negotiation(ALPN)で最終的に選択されたプロトコルを表す文字列を返します。

ALPN が使われなかった場合や、まだハンドシェイクが行われていない場合は nil を返します。

- **SEE** [OpenSSL::SSL::SSLContext#alpn_protocols=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/alpn_protocols=3d.md), [OpenSSL::SSL::SSLContext#alpn_select_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/alpn_select_cb=3d.md)
