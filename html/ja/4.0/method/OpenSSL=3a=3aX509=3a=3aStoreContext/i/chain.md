# OpenSSL::X509::StoreContext#chain

### def chain -> [OpenSSL::X509::Certificate] | nil

検証に利用した証明書チェインを証明書オブジェクト
([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md)のインスタンス)の配列で返します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼ぶ前は nil を返します。
