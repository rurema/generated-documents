# OpenSSL::PKCS7#detached

### def detached? -> bool
### def detached -> bool

平文に署名を付ける形式(multipart/signed)かどうかを返します。

[OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) で flags に [OpenSSL::PKCS7::DETACHED](../../../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md)
を渡した場合に真になります。
