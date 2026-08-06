# OpenSSL::X509::Name#hash_old

### def hash_old -> Integer

OpenSSL 0.9.8 と互換な古い方式のハッシュ関数のハッシュ値を返します。

内部では OpenSSL の X509_NAME_hash_old を呼び出します。
