# OpenSSL::PKey::RSA#set_key

### def set_key(n, e, d) -> self

n, e, d を `self` に設定します。

- **param** `n` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `e` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `d` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **raise** `OpenSSL::PKey::PKeyError` -- OpenSSL 3.0 以降とリンクされている場合に発生します。鍵オブジェクトが変更不可(immutable)になるため、このメソッドは利用できません
- **SEE** [OpenSSL::PKey::RSA#n](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/n.md), [OpenSSL::PKey::RSA#e](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/e.md), [OpenSSL::PKey::RSA#d](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/d.md)
