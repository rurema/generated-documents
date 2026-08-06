# class OpenSSL::X509::StoreContext < Object

証明書ストアコンテキストクラス。

証明書ストア([OpenSSL::X509::Store](../class/OpenSSL=3a=3aX509=3a=3aStore.md))を利用して実際の検証を行う機能を持ちます。

また、検証の途中の状態を保持するためにも使われます。
検証フィルター([OpenSSL::X509::Store#verify_callback](../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback.md))の引数として渡されます。

検証結果の詳細情報を保持するためにも使われます。

## Class Methods

- [new](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/s/new.md)

## Instance Methods

- [chain](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/chain.md)
- [cleanup](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/cleanup.md)
- [current_cert](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/current_cert.md)
- [current_crl](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/current_crl.md)
- [error](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md)
- [error=](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error=3d.md)
- [error_depth](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error_depth.md)
- [error_string](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error_string.md)
- [flags=](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/flags=3d.md)
- [purpose=](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/purpose=3d.md)
- [time=](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/time=3d.md)
- [trust=](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/trust=3d.md)
- [verify](../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md)
