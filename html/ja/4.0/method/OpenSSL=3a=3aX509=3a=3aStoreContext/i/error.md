# OpenSSL::X509::StoreContext#error

### def error -> Integer

検証時のエラーコードを返します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼びだし、証明書チェインの各証明書を検証したコールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))が呼び出され、
StoreContext オブジェクトが渡されますが、このメソッドを呼ぶと直前の証明書検証結果のエラーコードが得られます。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼び出したあと、このメソッドを呼ぶと検証の最終的な検証結果のエラーコードを返します。

エラーコードの整数値は [OpenSSL::X509](../../../class/OpenSSL=3a=3aX509.md) に定数が定義されています。
詳しくは [OpenSSL::X509#verify_error](../../../class/OpenSSL=3a=3aX509.md#verify_error) を見てください。
検証に成功した場合は [OpenSSL::X509::V_OK](../../../method/OpenSSL=3a=3aX509/c/V_OK.md) を返します。

- **SEE** [OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md)
