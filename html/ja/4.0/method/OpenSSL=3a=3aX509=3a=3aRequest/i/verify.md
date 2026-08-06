# OpenSSL::X509::Request#verify

### def verify(key) -> bool

署名を検証します。

検証に成功した場合には true を、失敗した場合には false を返します。

- **param** `key` -- 検証に利用する公開鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のサブクラスのインスタンス)
- **raise** `OpenSSL::X509::RequestError` -- 検証時にエラーが生じた場合に発生します
- **SEE** [OpenSSL::X509::Request#sign](../../../method/OpenSSL=3a=3aX509=3a=3aRequest/i/sign.md)
