# OpenSSL::SSL::SSLSocket#npn_protocol

### def npn_protocol -> String | nil

ハンドシェイクの結果、Next Protocol Negotiation(NPN)でクライアントが最終的に選択したプロトコルを表す文字列を返します。

NPN が使われなかった場合や、まだハンドシェイクが行われていない場合は nil を返します。

- **SEE** [OpenSSL::SSL::SSLContext#npn_protocols=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/npn_protocols=3d.md), [OpenSSL::SSL::SSLContext#npn_select_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/npn_select_cb=3d.md)
