# OpenSSL::SSL::SSLSocket#post_connection_check

### def post_connection_check(hostname) -> true

接続後検証を行います。

検証に成功した場合は true を返し、失敗した場合は例外 
[OpenSSL::SSL::SSLError](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLError.md) を発生させます。

OpenSSL の API では、
[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) や [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) 
での検証は実用的には不完全です。
CA が証明書に署名してそれが失効していないことしか確認しません。
実用上は証明書に記載されている事項を見て、接続先が妥当であるかを確認する必要があります。通常は接続先ホストの FQDN と証明書に記載されている FQDN が一致しているかどうかを調べます。このメソッドはその FQDN のチェックを行ないます。

- **param** `hostname` -- チェックする FQDN の文字列
- **raise** `OpenSSL::SSL::SSLError` -- チェックに失敗した場合に発生します
