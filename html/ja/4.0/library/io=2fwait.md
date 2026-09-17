# library io/wait

IOが読み込み可能になるまで待つ機能を提供するライブラリです。

[IO#wait](../method/IO/i/wait.md)・[IO#wait_readable](../method/IO/i/wait_readable.md)・[IO#wait_writable](../method/IO/i/wait_writable.md)・[IO#wait_priority](../method/IO/i/wait_priority.md) は Ruby 3.2 で
[IO](../class/IO.md) 本体に移動したため、このライブラリを require しなくても使えます。
`IO#nread` と `IO#ready?` は io-wait 0.4.0(Ruby 4.0)で削除されました。
Ruby 4.0 以降ではこのライブラリは何も定義せず、互換性のために require できるだけです。
