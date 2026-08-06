# OpenSSL::BN#prime?

### def prime? -> bool
### def prime?(checks) -> bool

自身が素数であるなら true を返します。

Miller-Rabin 法により確率的に判定します。
checkで指定した回数だけ繰り返します。
引数を省略した場合は OpenSSL が適切な回数を判断します。

- **param** `check` -- Miller-Robin 法の繰り返しの回数
- **raise** `OpenSSL::BNError` -- 判定時にエラーが発生
- **SEE** [OpenSSL::BN#prime_fasttest?](../../../method/OpenSSL=3a=3aBN/i/prime_fasttest=3f.md)
