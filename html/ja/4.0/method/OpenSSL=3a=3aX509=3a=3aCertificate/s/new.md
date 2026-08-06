# OpenSSL::X509::Certificate.new

### def OpenSSL::X509::Certificate.new -> OpenSSL::X509::Certificate
### def OpenSSL::X509::Certificate.new(obj) -> OpenSSL::X509::Certificate

証明書オブジェクトを生成します。

引数を与えなかった場合には、空の証明書を返します。

obj が [String](../../../class/String.md) である場合には、それを
PEM 形式もしくは DER 形式の証明書データの文字列であると見なしてその内容から証明書オブジェクトを生成します。

obj が [IO](../../../class/IO.md) である場合には、そのファイルの中身から証明書オブジェクトを生成します。

obj が [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトである場合には、そのオブジェクトの内容を複製します。

obj が to_der メソッドを持つ場合には、そのメソッドによって
DER 形式のバイト列に変換し、証明書オブジェクトを生成します。

- **param** `obj` -- 証明書のデータ
- **raise** `OpenSSL::X509::CertificateError` -- 証明書のフォーマットが不正であるなど、読み込みに失敗した場合に発生します
