# Net::HTTP#ca_file=

### def ca_file=(path)

信頼する CA 証明書ファイルのパスを文字列で設定します。

ファイルには複数の証明書を含んでいても構いません。
詳しくは [OpenSSL::SSL::SSLContext#ca_file=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md) を見てください。

デフォルトは nil (指定なし)です。

- **param** `path` -- ファイルパス文字列
- **SEE** [Net::HTTP#ca_file](../../../method/Net=3a=3aHTTP/i/ca_file.md), [OpenSSL::SSL::SSLContext#ca_file=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md)
