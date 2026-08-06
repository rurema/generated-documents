# OpenSSL::Random?.egd

### module_function def egd(filename) -> true

EGD(Entropy Gathering Daemon) からエントロピーを得、乱数生成器に追加します。

filename で指定した Unix domain socket から EGD に問い合わせ、
255 バイト分のエントロピーを取得します。
[`OpenSSL::Random.egd_bytes(filename, 255)`](../../../method/OpenSSL=3a=3aRandom/m/egd_bytes.md) と同じです。

- **param** `filename` -- EGD のソケットのファイル名
- **raise** `OpenSSL::Random::RandomError` -- EGD からのエントロピー取得に失敗した場合に発生します。
