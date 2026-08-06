# OpenSSL::SSL::SSLSocket#verify_result

### def verify_result -> Integer

検証結果のエラーコードを整数値で返します。

エラーコードの整数値は [OpenSSL::X509](../../../class/OpenSSL=3a=3aX509.md) に定数が定義されています。
詳しくは [OpenSSL::X509#verify_error](../../../class/OpenSSL=3a=3aX509.md#verify_error) を見てください。
検証に成功した場合は [OpenSSL::X509::V_OK](../../../method/OpenSSL=3a=3aX509/c/V_OK.md) を返します。
