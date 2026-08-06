# UNIXSocket.pair

### def UNIXSocket.pair(type=Socket::SOCK_STREAM, protocol=0) -> [UNIXSocket, UNIXSocket]
### def UNIXSocket.socketpair(type=Socket::SOCK_STREAM, protocol=0) -> [UNIXSocket, UNIXSocket]

相互に結合された UNIX ソケットのペアを含む2要素の配列を返します。

`type` にはソケットタイプを指定します。
[Socket::SOCK_STREAM](../../../method/Socket/c/SOCK_STREAM.md), [Socket::SOCK_DGRAM](../../../method/Socket/c/SOCK_DGRAM.md), [Socket::SOCK_RAW](../../../method/Socket/c/SOCK_RAW.md) などの整数、`:STREAM`, `:DGRAM`, `:RAW` などのシンボル、
`"STREAM"` などの文字列が渡せます。

`protocol` には プロトコルを指定します。`0` は Unix domain でのデフォルト値が使われます。

```ruby
require 'socket'

s1, s2 = UNIXSocket.pair
s1.send "a", 0
s1.send "b", 0
p s2.recv(10) #=> "ab"
```

- **param** `type` -- ソケットタイプ
- **param** `protocol` -- プロトコル
