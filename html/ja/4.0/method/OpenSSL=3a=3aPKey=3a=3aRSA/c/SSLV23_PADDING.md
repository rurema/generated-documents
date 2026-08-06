# OpenSSL::PKey::RSA::SSLV23_PADDING

### const SSLV23_PADDING -> Integer

PKCS #1 v1.5 で定義されているものに
SSL特有の変更を加えたパディングモードです。

互換性目的以外での利用は推奨しません。

[OpenSSL::PKey::RSA#public_encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_encrypt.md)、
[OpenSSL::PKey::RSA#private_decrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private_decrypt.md) の第二引数に指定できます。
