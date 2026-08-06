# OpenSSL::X509::StoreContext#current_crl

### def current_crl -> OpenSSL::X509::CRL | nil

直前に検証に利用した CRL のオブジェクトを返します。

証明書チェインの各証明書検証後コールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))呼び出しに渡される StoreContext オブジェクトにこのメソッドを呼び出すと直前に検証に利用した CRL オブジェクトを返します。
