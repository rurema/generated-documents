# Net::HTTP#ca_path=

### def ca_path=(path)

信頼する CA 証明書ファイルが存在するディレクトリを設定します。

ファイル名はハッシュ値の文字列にしなければなりません。
詳しくは [OpenSSL::SSL::SSLContext#ca_path=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path=3d.md) を見てください。

デフォルトは nil (指定なし)です。

- **param** `path` -- ディレクトリ名文字列
- **SEE** [Net::HTTP#ca_path](../../../method/Net=3a=3aHTTP/i/ca_path.md), [OpenSSL::SSL::SSLContext#ca_path=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path=3d.md)
