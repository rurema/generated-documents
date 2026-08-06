# OpenSSL::X509::V_FLAG_CRL_CHECK

### const V_FLAG_CRL_CHECK -> Integer

証明書の検証時に CRL をチェックすることを意味します。

このフラグのみを指定すると検証する証明書のみ CRL をチェックし、
CA の証明書チェーンには CRL のチェックがなされません。

証明チェーン全体をチェックしたい場合は V_FLAG_CRL_CHECK と
[OpenSSL::X509::V_FLAG_CRL_CHECK_ALL](../../../method/OpenSSL=3a=3aX509/c/V_FLAG_CRL_CHECK_ALL.md) の両方を指定する必要があります。

[OpenSSL::X509::Store#flags=](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/flags=3d.md) で使います。
