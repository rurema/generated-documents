# OpenSSL::PKey::RSA#params

### def params -> {String => OpenSSL::BN}

鍵のパラメータ([OpenSSL::PKey::RSA#e](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/e.md),[OpenSSL::PKey::RSA#n](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/n.md),
[OpenSSL::PKey::RSA#d](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/d.md)など)を{パラメータ名文字列 => パラメータ値}
というハッシュで返します。

鍵が公開鍵の場合、[OpenSSL::PKey::RSA#d](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/d.md)
のように公開鍵が持っていない値は 0 になります。
