# OpenSSL::SSL::SSLContext#ca_file=

### def ca_file=(ca)

接続相手の検証のために使う、信頼している CA 証明書ファイルのパスを設定します。

ファイルは以下のように複数の証明書を含んでいても構いません。

```text
(ここに証明書の説明)

-----BEGIN CERTIFICATE-----
... (CA certificate in base64 encoding) ...
-----END CERTIFICATE-----

(ここに証明書の説明)

-----BEGIN CERTIFICATE-----
... (CA certificate in base64 encoding) ...
-----END CERTIFICATE-----
```

デフォルトは nil です。

- **param** `ca` -- CA証明書ファイルのパス文字列
- **SEE** [OpenSSL::SSL::SSLContext#ca_file=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md)
