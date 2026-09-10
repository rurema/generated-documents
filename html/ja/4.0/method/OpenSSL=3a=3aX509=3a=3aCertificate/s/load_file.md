# OpenSSL::X509::Certificate.load_file

### def OpenSSL::X509::Certificate.load_file(path) -> [OpenSSL::X509::Certificate]

path で指定したファイルを読み込み、`OpenSSL::X509::Certificate.load` で証明書をパースして返します。

PEM 形式・DER 形式のどちらにも対応しています。PEM 形式の場合は複数の証明書を連結したファイルも読み込め、返り値にはすべての証明書が含まれます。

- **param** `path` -- 読み込むファイルのパス
- **raise** `OpenSSL::X509::CertificateError` -- ファイルの中身が空であったり、証明書として解釈できないデータしか含まれていない場合に発生します
