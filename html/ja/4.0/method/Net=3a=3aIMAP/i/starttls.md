# Net::IMAP#starttls

### def starttls(options) -> Net::IMAP::TaggedResponse
### def starttls(certs, verify) -> Net::IMAP::TaggedResponse

STARTTLS コマンドを送って TLS のセッションを開始します。

options で [openssl](../../../library/openssl.md) に渡すオプションを指定します。
[OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) の引数と同じ意味です。

互換性のため、certs で証明書or証明書ディレクトリのファイル名(文字列)、
verify で検証するかどうか([OpenSSL::SSL::VERIFY_PEER](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_PEER.md)、
[OpenSSL::SSL::VERIFY_NONE](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_NONE.md)に対応します)を指定できます。

- **param** `options` -- SSL/TLS のオプション([Hash](../../../class/Hash.md) オブジェクト)
- **param** `certs` -- 証明書ファイル名、もしくは証明書ディレクトリ名(文字列)
- **param** `verify` -- 真なら SSL/TLS 接続時に証明書を検証します
