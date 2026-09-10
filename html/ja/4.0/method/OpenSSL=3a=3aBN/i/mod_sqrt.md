# OpenSSL::BN#mod_sqrt

### def mod_sqrt(bn2) -> OpenSSL::BN

`self` の bn2 を法とする平方根を返します。

`x**2 % bn2 == self % bn2` となる x を返します。

- **param** `bn2` -- 法とする数
- **raise** `OpenSSL::BNError` -- 計算に失敗した場合に発生します
