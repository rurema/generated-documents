# Addrinfo#listen

### def listen(backlog=5) -> Socket
### def listen(backlog=5){|sock| ... } -> object

自身のアドレスにバインドされたソケットを作成し、
[man:listen(2)] を実行します。

ブロックが渡されたときにはそのブロックに生成された [Socket](../../../class/Socket.md)
オブジェクトが渡されます。ブロックの返り値がメソッドの返り値となります。
ブロックを省略した場合は、生成された [Socket](../../../class/Socket.md)
オブジェクトが返されます。

- **param** `backlog` -- バックログの最大数
