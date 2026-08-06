# library io/console

端末上の入出力を制御するための機能を [IO](../class/IO.md) に追加するためのライブラリです。

例えば、[IO#noecho](../method/IO/i/noecho.md) を使ってパスワード入力を端末上に表示しないといった事ができます。同様の事が [readline](../library/readline.md) ライブラリでも実現できますが、そこまでは必要はないけど、 [IO#gets](../method/IO/i/gets.md) や [IO#getc](../method/IO/i/getc.md) では機能不足といった場合に便利です。
