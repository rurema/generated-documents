# OpenSSL::PKey::RSA#set_crt_params

### def set_crt_params(dmp1, dmq1, iqmp) -> self

dmp1, dmq1, iqmp を `self` に設定します。それぞれ `d mod (p - 1)`、`d mod (q - 1)`、`q^(-1) mod p` として計算される値です。

- **param** `dmp1` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `dmq1` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `iqmp` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **raise** `OpenSSL::PKey::PKeyError` -- OpenSSL 3.0 以降とリンクされている場合に発生します。鍵オブジェクトが変更不可(immutable)になるため、このメソッドは利用できません
- **SEE** [OpenSSL::PKey::RSA#dmp1](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmp1.md), [OpenSSL::PKey::RSA#dmq1](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/dmq1.md), [OpenSSL::PKey::RSA#iqmp](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/iqmp.md)
