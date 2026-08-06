# OpenSSL::PKCS7#crls=

### def crls=(crls)

署名に添付される CRL を配列で設定します。

元々付けられていた CRL はクリアされます。

- **param** `crls` -- 更新する CRL([OpenSSL::X509::CRL](../../../class/OpenSSL=3a=3aX509=3a=3aCRL.md) オブジェクト) の配列
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 変更に失敗した場合に発生します。
