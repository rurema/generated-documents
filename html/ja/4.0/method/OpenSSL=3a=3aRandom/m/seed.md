# OpenSSL::Random?.seed

### module_function def seed(str) -> str

乱数生成器にエントロピーを「エントロピー予測値 = str のバイト数」として追加します。

OpenSSL::Random.random_add(str, str.size) と同じです。

- **param** `str` -- 予測不可能な内容の文字列
- **SEE** [OpenSSL::Random?.random_add](../../../method/OpenSSL=3a=3aRandom/m/random_add.md)
