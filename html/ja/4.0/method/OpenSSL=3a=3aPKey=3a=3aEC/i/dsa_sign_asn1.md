# OpenSSL::PKey::EC#dsa_sign_asn1

### def dsa_sign_asn1(data) -> String

秘密鍵を用い、data に ECDSA で署名します。

結果は文字列として返します。

data のダイジェストを取る処理はこのメソッドに含まれていません。
自身で適当なダイジェストを取る必要があります。

- **param** `data` -- 署名対象のデータ(文字列)
- **raise** `OpenSSL::PKey::ECError` -- EC オブジェクトが秘密鍵を保持していない場合、もしくは署名に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::EC#dsa_verify_asn1](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/dsa_verify_asn1.md)
