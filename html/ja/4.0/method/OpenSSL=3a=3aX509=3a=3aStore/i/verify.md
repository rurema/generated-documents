# OpenSSL::X509::Store#verify

### def verify(cert, chain = nil) -> bool
### def verify(cert, chain = nil){|ok, ctx| ... } -> bool

証明書を証明書ストアに存在する CA 証明書で検証します。

chain には検証したい証明書の証明書チェイン全体を
[OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の配列で渡します。

検証に成功した場合は true を、失敗した場合は false を返します。

このメソッドをブロック付きで呼び出すと、そのブロックが検証をフィルタするコールバックとみなされます。このコールバックについては
[OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md) を参照してください。

内部では [OpenSSL::X509::StoreContext.new](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/s/new.md) と
[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼びだすことによって検証しています。

- **param** `cert` -- 検証したい証明書の [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md)
- **param** `chain` -- 検証したい証明書の証明書チェイン全体の配列
- **raise** `OpenSSL::X509::StoreError` -- 検証時にエラーが生じたときに発生します
