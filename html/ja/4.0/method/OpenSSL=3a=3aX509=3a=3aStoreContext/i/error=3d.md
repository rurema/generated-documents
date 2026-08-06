# OpenSSL::X509::StoreContext#error=

### def error=(error)

エラーコードを設定します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼びだし、証明書チェインの各証明書を検証したコールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))が呼び出され、
StoreContext オブジェクトが渡されますが、このメソッドでエラーコードを設定し、コールバックの返り値を false にすると、最終的なエラーコードがここで設定したものになります。[OpenSSL::X509::StoreContext#error_string](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error_string.md) 
もその値に応じた文字列が返るようになります。

例:

```text
require 'openssl'

store = OpenSSL::X509::Store.new
store.set_default_paths
cert = OpenSSL::X509::Certificate.new(...)
store.verify(cert, chain){|ok,ctx| 
  ctx.error = OpenSSL::X509::V_ERR_APPLICATION_VERIFICATION; 
false}  # => false
p store.error # => OpenSSL::X509::V_ERR_APPLICATION_VERIFICATION
p store.error_string # => "application verification failure"
```
  
- **param** `error` -- エラーコードの整数値
- **SEE** [OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md)
