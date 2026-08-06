# OpenSSL::PKey::RSA::NO_PADDING

### const NO_PADDING -> Integer

パディングをしないパディングモードです。

セキュリティ上の問題を引き起すため、基本的に使わないでください。

[OpenSSL::PKey::RSA#public_encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_encrypt.md)、
[OpenSSL::PKey::RSA#public_decrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/public_decrypt.md)、
[OpenSSL::PKey::RSA#private_encrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private_encrypt.md)、
[OpenSSL::PKey::RSA#private_decrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/private_decrypt.md) の第二引数に指定できます。
