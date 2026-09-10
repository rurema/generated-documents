# OpenSSL::PKey::DSA#set_key

### def set_key(pub_key, priv_key) -> self

pub_key と priv_key を `self` に設定します。

- **param** `pub_key` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクト
- **param** `priv_key` -- 設定する [OpenSSL::BN](../../../class/OpenSSL=3a=3aBN.md) オブジェクトです。nil でもかまいません
- **raise** `OpenSSL::PKey::PKeyError` -- OpenSSL 3.0 以降とリンクされている場合に発生します。鍵オブジェクトが変更不可(immutable)になるため、このメソッドは利用できません
- **SEE** [OpenSSL::PKey::DSA#pub_key](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/pub_key.md), [OpenSSL::PKey::DSA#priv_key](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/priv_key.md)
