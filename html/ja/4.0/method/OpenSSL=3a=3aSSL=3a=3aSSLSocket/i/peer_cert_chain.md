# OpenSSL::SSL::SSLSocket#peer_cert_chain

### def peer_cert_chain -> [OpenSSL::X509::Certificate] | nil

接続相手の証明書チェインを [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列で返します。

[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) や [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) 
で SSL/TLS ハンドシェイクを行う前にこのメソッドを呼ぶと nil を返します。

以下の順の配列を返します。

```text
[接続相手の証明書, 下位CAの証明書,... 中間CAの証明書]
```

ルート CA の証明書は含まれないことに注意してください。

- **SEE** [OpenSSL::SSL::SSLSocket#peer_cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/peer_cert.md)
