# OpenSSL::X509::StoreContext#error_string

### def error_string -> String

検証したときのエラー文字列を返します。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼びだし、証明書チェインの各証明書を検証したコールバック([OpenSSL::X509::Store#verify_callback=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback=3d.md))が呼び出され、
StoreContext オブジェクトが渡されますが、このメソッドを呼ぶと直前の証明書検証結果のエラー文字列が得られます。

[OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md) を呼び出したあと、このメソッドを呼ぶと検証の最終的な検証結果のエラー文字列を返します。

検証に成功した場合は "ok" を返します。
