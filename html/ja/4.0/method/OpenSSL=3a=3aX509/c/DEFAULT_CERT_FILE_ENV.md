# OpenSSL::X509::DEFAULT_CERT_FILE_ENV

### const DEFAULT_CERT_FILE_ENV -> String

CA 証明書ファイル名を指定する環境変数名です。

通常、"SSL_CERT_FILE" という文字列です。
この環境変数を設定しておくことによって
[OpenSSL::X509::Store#set_default_paths](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/set_default_paths.md) で読み込まれる証明書ファイル名を変更できます。

- **SEE** [OpenSSL::X509::DEFAULT_CERT_FILE](../../../method/OpenSSL=3a=3aX509/c/DEFAULT_CERT_FILE.md)
