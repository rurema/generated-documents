# OpenSSL::X509::Store#error

### def error -> Integer | nil

最後に [OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md) を呼び、検証したときのエラーコードを返します。

エラーコードの整数値は [OpenSSL::X509](../../../class/OpenSSL=3a=3aX509.md) に定数が定義されています。
詳しくは [OpenSSL::X509#verify_error](../../../class/OpenSSL=3a=3aX509.md#verify_error) を見てください。
検証に成功した場合は [OpenSSL::X509::V_OK](../../../method/OpenSSL=3a=3aX509/c/V_OK.md) を返します。

verify を一度も呼びだしていない場合は nil を返します。

返り値は verify を呼ぶごとに更新されます。
