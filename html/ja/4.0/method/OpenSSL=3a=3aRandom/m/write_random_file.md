# OpenSSL::Random?.write_random_file

### module_function def write_random_file(filename) -> true

乱数生成器で生成された 1024 バイトのランダムなバイト列をファイルに書き込みます。

これで出力したランダムなバイト列はあとで乱数生成器を初期化するのに使えます。リブート直後などシステムからのエントロピーが少ない場合に利用できます。

このファイルは利用者以外には読めないように保存しなければなりません。
部外者がこのファイルを読めることはセキュリティ上の問題を引き起します。

- **param** `filename` -- 書き込むファイルの名前
- **raise** `OpenSSL::Random::RandomError` -- ファイルの書き出しに失敗した場合に発生します
