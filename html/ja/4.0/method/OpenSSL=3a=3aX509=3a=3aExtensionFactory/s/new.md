# OpenSSL::X509::ExtensionFactory.new

### def OpenSSL::X509::ExtensionFactory.new(issuer_cert=nil, subject_cert=nil, subject_req=nil, crl=nil) -> OpenSSL::X509::ExtensionFactory

ExtensionFactory オブジェクトを生成します。

証明書の発行者や所有者の [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトや
[OpenSSL::X509::Request](../../../class/OpenSSL=3a=3aX509=3a=3aRequest.md)、[OpenSSL::X509::CRL](../../../class/OpenSSL=3a=3aX509=3a=3aCRL.md) オブジェクトを渡すことによって、拡張領域の中身を ExtensionFactory オブジェクトが計算できます。
例えば、"subjectKeyIdentifier" 拡張領域は証明書の一部のハッシュ値を値として持ちますが、
[OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトをあらかじめ渡しておくことによって
[OpenSSL::X509::ExtensionFactory#create_extension](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_extension.md) がその値を計算します。
これらの情報が必要ない場合は nil を渡します。

以下のメソッドによってオブジェクト生成後に証明書オブジェクト等を設定できます。
  - [OpenSSL::X509::ExtensionFactory#issuer_certificate=](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/issuer_certificate=3d.md)
  - [OpenSSL::X509::ExtensionFactory#subject_certificate=](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_certificate=3d.md)
  - [OpenSSL::X509::ExtensionFactory#subject_request=](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/subject_request=3d.md)
  - [OpenSSL::X509::ExtensionFactory#crl=](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/crl=3d.md) 

- **param** `issuer_cert` -- 証明書発行者、すなわち CA の 
       [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト
- **param** `subject_cert` -- 証明書所有者の
       [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト
- **param** `subject_req` -- 関連する証明書署名要求([OpenSSL::X509::Request](../../../class/OpenSSL=3a=3aX509=3a=3aRequest.md))
       オブジェクト
- **param** `crl` -- 関連する 証明書失効リスト([OpenSSL::X509::CRL](../../../class/OpenSSL=3a=3aX509=3a=3aCRL.md))オブジェクト
