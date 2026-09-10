# OpenSSL::PKey::RSA#set_factors

### def set_factors(p, q) -> self

p, q を `self` に設定します。

- **param** `p` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `q` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **raise** `OpenSSL::PKey::PKeyError` -- OpenSSL 3.0 以降とリンクされている場合に発生します。鍵オブジェクトが変更不可(immutable)になるため、このメソッドは利用できません
- **SEE** [OpenSSL::PKey::RSA#p](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/p.md), [OpenSSL::PKey::RSA#q](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/q.md)
