# OpenSSL::SSL::SSLSocket#cipher

### def cipher -> [String, String, Integer, Integer]

現在実際に使われている暗号の情報を配列で返します。

返される配列の形式は以下の例のように [暗号名, TLS/SSLのバージョン, 鍵長, アルゴリズムで使われる bit 数] となります。

```text
["DES-CBC3-SHA", "TLSv1/SSLv3", 168, 168]
```

[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) や [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) 
で SSL/TLS ハンドシェイクを行う前にこのメソッドを呼ぶと nil を返します。
