# OpenSSL::X509::StoreContext#error_depth

### def error_depth -> Integer

エラーが起きた場所の深さを返します。

検証対象の証明書は深さ0、その証明書を発行した CA の証明書は深さ1、その CA の証明証を発行した上位の CA の証明書は深さ2、…と定義されいてます。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼び出したあと、このメソッドを呼ぶと検証でエラーが起きた場所の深さを返します。

証明書チェインの各証明書を検証したコールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))が検証時に呼びだされ、StoreContext オブジェクトが渡されますが、そのオブジェクトに対しこのメソッドを呼びだすと、そこで検証された証明書の深さが得られます。
