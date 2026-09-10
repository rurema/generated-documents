# OpenSSL::PKey::EC#to_pem

### def export(cipher = nil, pass = nil) -> String
### def to_pem(cipher = nil, pass = nil) -> String

鍵を PEM 形式の文字列に変換します。

`self` が公開鍵の情報しか持たない場合は X.509 SubjectPublicKeyInfo 形式になります。この場合 cipher と pass は無視されます。

`self` が秘密鍵の情報を持つ場合は SEC 1/RFC 5915 の ECPrivateKey 形式になります。cipher と pass を指定すると、OpenSSL の伝統的な PEM 暗号化形式で暗号化します。この形式は鍵導出に MD5 を使うため、FIPS 準拠のシステムでは利用できません。

このメソッドは互換性のために残されています。X.509 SubjectPublicKeyInfo 形式が必要なら [OpenSSL::PKey::PKey#public_to_pem](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/public_to_pem.md) を、PKCS #8 形式が必要なら [OpenSSL::PKey::PKey#private_to_pem](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/private_to_pem.md) を使ってください。

- **param** `cipher` -- 秘密鍵を暗号化する暗号アルゴリズムの名前、または [OpenSSL::Cipher](../../../class/OpenSSL=3a=3aCipher.md) オブジェクト
- **param** `pass` -- 暗号化に使うパスワード
- **raise** `OpenSSL::PKey::ECError` -- 文字列への変換に失敗した場合に発生します。
       公開鍵が含まれていない場合や、鍵が妥当でない場合などに失敗します。
