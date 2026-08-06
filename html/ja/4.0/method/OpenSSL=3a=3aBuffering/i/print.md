# OpenSSL::Buffering#print

### def print(*args) -> nil

args を順に出力します。

args の各要素を to_s で文字列に変換して出力します。
[IO#print](../../../method/IO/i/print.md) とほぼ同様ですが、引数を省略した場合に $_ を出力する機能はありません。

- **param** `args` -- 出力するオブジェクト
