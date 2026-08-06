# OpenSSL::PKCS7::NOCERTS

### const NOCERTS  -> Integer

署名者の証明書を署名に含めません。送り先がすでに証明書をもっている場合など、他の方法で証明書を手に入れることができる場合にデータ量を減らすために用います。

[OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) で利用可能なフラグです。
