# OpenSSL::X509::Certificate#tbs_bytes

### def tbs_bytes -> String

署名対象となる TBSCertificate 部分を DER 形式でエンコードしたバイト列を返します。

主に Certificate Transparency の埋め込み署名を検証する際に使われます。
