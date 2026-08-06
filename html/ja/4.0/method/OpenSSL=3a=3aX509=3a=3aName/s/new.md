# OpenSSL::X509::Name.new

### def OpenSSL::X509::Name.new -> OpenSSL::X509::Name
### def OpenSSL::X509::Name.new(ary, template = OBJECT_TYPE_TEMPLATE) -> OpenSSL::X509::Name
### def OpenSSL::X509::Name.new(obj) -> OpenSSL::X509::Name

[OpenSSL::X509::Name](../../../class/OpenSSL=3a=3aX509=3a=3aName.md) オブジェクトを生成します。

引数を与えなかった場合は空のオブジェクトを返します。

第1引数として配列を与えた場合には、その内容が属性型と属性値の文字列のペアであると仮定して、オブジェクトを生成します。
この場合値のデータ型(ASN.1の型)は template で与えたハッシュによって定まります。

obj が [OpenSSL::X509::Name](../../../class/OpenSSL=3a=3aX509=3a=3aName.md) である場合には内容を複製したオブジェクトを返します。

それ以外の場合は obj の to_der メソッドを読んで DER 形式のバイト列に変換し、そこから内容を作ります。

```ruby title="例"
require 'openssl'
p OpenSSL::X509::Name.new([["C", "JP"], ["ST", "Kanagawa"], ["L", "Yokohama"], ["O", "Example Company"], ["OU", "Lab3"], ["CN", "foobar"], ["emailAddress", "foobar@lab3.example.co.jp"]])
# => OpenSSL::X509::Name object: /C=JP/ST=Kanagawa/L=Yokohama/O=Example Company/OU=Lab3/CN=foobar/emailAddress=foobar@lab3.example.co.jp
```

- **param** `ary` -- 属性型と属性値のペアの配列
- **param** `obj` -- 識別子オブジェクトを生成するための情報
- **param** `template` -- objに配列を与えた場合には属性型に対応するデータ型を表わすハッシュ
- **raise** `OpenSSL::X509::NameError` -- 与えたデータが不正である場合など、オブジェクトが生成できなかった場合に発生します
