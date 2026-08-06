# OpenSSL::X509::StoreContext#current_cert

### def current_cert -> OpenSSL::X509::Certificate

直前に検証した証明書のオブジェクトを返します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) で検証が失敗した場合は証明書チェイン中で検証に失敗した証明書のオブジェクトを返します。

証明書チェインの各証明書検証後コールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))呼び出しに渡される StoreContext オブジェクトにこのメソッドを呼び出すと直前に検証した証明書を返します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼ぶ前にこのメソッドを呼ぶと空の [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) を返します。
