# OpenSSL::PKey::DSA#set_pqg

### def set_pqg(p, q, g) -> self

p, q, g を `self` に設定します。

- **param** `p` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `q` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `g` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **raise** `OpenSSL::PKey::PKeyError` -- OpenSSL 3.0 以降とリンクされている場合に発生します。鍵オブジェクトが変更不可(immutable)になるため、このメソッドは利用できません
- **SEE** [OpenSSL::PKey::DSA#p](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/p.md), [OpenSSL::PKey::DSA#q](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/q.md), [OpenSSL::PKey::DSA#g](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/g.md)
