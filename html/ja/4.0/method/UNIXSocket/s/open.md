# UNIXSocket.open

### def UNIXSocket.open(path) -> UNIXSocket
### def UNIXSocket.new(path)  -> UNIXSocket
### def UNIXSocket.open(path){|sock| ...} -> object
### def UNIXSocket.new(path){|sock| ...} -> object

`path` で指定したパス名を用いてソケットを接続します。

ブロックを省略すると接続したソケットを返します。

ブロックを渡した場合は、接続したソケットを引数としてそのブロックを呼びだし、ブロック終了時にソケットを閉じます。この場合にはブロックの評価値を返り値として返します。

- **param** `path` -- 接続先のパス名文字列

```ruby
require 'socket'

s = UNIXSocket.new("/tmp/sock")
s.send("hello", 0)
```
