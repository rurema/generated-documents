# Socket.unix

### def Socket.unix(path) -> Socket
### def Socket.unix(path){|sock| ... } -> object

Unix クライアントソケットを生成します。

ブロックが省略されたときは、生成されたソケットが返されます。

ブロックが渡されたときは、生成されたソケットを引数としてブロックを呼び出します。メソッドの返り値はブロックの評価値となります。また、ブロックの終了後にソケットを [IO#close](../../../method/IO/i/close.md) します。

```ruby
require 'socket'

# /tmp/sock と通信する
Socket.unix("/tmp/sock") {|sock|
  t = Thread.new { IO.copy_stream(sock, STDOUT) }
  IO.copy_stream(STDIN, sock)
  t.join
}
```

- **param** `path` -- 接続対象のパス(文字列)
