# UNIXServer.open

### def UNIXServer.open(path) -> UNIXServer
### def UNIXServer.new(path) -> UNIXServer
### def UNIXServer.open(path){|sock| ...} -> object
### def UNIXServer.new(path){|sock| ...} -> object

path で指定したパス名を用いて接続を受け付けるソケットを作成します。

ブロックを省略すると作成したサーバソケットを返します。

ブロックを渡した場合は、作成したソケットを引数としてそのブロックを呼びだし、ブロック終了時にソケットを閉じます。この場合にはブロックの評価値を返り値として返します。

- **param** `path` -- 接続を受け付けるパス名文字列

```ruby
require 'socket'

serv = UNIXServer.new("/tmp/sock")
s = serv.accept
p s.read
```
