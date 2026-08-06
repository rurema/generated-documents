# OpenSSL::X509::CRL.new

### def OpenSSL::X509::CRL.new -> OpenSSL::X509::CRL
### def OpenSSL::X509::CRL.new(obj) -> OpenSSL::X509::CRL

CRL(証明書失効リスト)オブジェクトを生成します。

新しい OpenSSL::X509::Request オブジェクトを生成します。

引数なしの場合は空の OpenSSL::X509::Request オブジェクトを生成します。

引数が文字列の場合は、PEM 形式もしくは DER 形式であるとみなしてオブジェクトを生成します。

引数が [IO](../../../class/IO.md) オブジェクトである場合は、そのファイルの中身からオブジェクトを生成します。

引数が OpenSSL::X509::CRL である場合には、その内容をコピーしたオブジェクトを生成します。

引数が to_der メソッドを持つ場合は、そのメソッドによって
DER 形式の文字列に変換してからオブジェクトを生成します。

- **param** `obj` -- CRL のデータ
- **raise** `OpenSSL::X509::CRLError` -- オブジェクトの生成に失敗した場合に発生します
