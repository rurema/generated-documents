# OpenSSL::Random?.egd_bytes

### module_function def egd_bytes(filename, length) -> true

EGD(Entropy Gathering Daemon) から length バイト分のエントロピーを得ます。

filename で指定した Unix domain socket から EGD に問い合わせ、指定した大きさのエントロピーを乱数生成器に追加します。

- **param** `filename` -- EGD のソケットのファイル名
- **param** `length` -- 読み込むバイト数
- **raise** `OpenSSL::Random::RandomError` -- EGD からのエントロピー取得に失敗した場合に発生します。
