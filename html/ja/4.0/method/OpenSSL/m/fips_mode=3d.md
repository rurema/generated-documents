# OpenSSL?.fips_mode=

### module_function def fips_mode=(bool)

FIPS モードを明示的に on/off します。

- **raise** `OpenSSL::OpenSSLError` -- インストールされている OpenSSL が
       FIPS をサポートしていない場合に発生します。

- **SEE** [OpenSSL::OPENSSL_FIPS](../../../method/OpenSSL/c/OPENSSL_FIPS.md)
